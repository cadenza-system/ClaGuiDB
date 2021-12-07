module Api
    module V1
        class MovieController < ApplicationController
            before_action :set_movie, only: [:show, :update, :destroy]
            # GET /movie
            def index
                movies = Movie.all
                dataList = []
                
                for movie in movies do
                    data = { movie: movie ,work: movie.work ,workSub: movie.workSub, composer: movie.composer, agganger: movie.arranger }
                    dataList.push(data)
                end

                render json: { status: 'SUCCESS', message: 'Loaded musicians', data: dataList }

            end

            # GET /movie/:id
            def show
                render json: { movie: @movie ,work: @work ,workSub: @workSub, composer: @composer, agganger: @arranger }
            end

            def search
                movies = Movie.all
                dataList = []
                for movie in movies do
                    if (isMatch(movie, params[:param]))
                        data = { movie: movie ,work: movie.work ,workSub: movie.workSub, composer: movie.composer, agganger: movie.arranger }
                        dataList.push(data)
                    end
                end

                render json: { status: 'SUCCESS', message: 'Loaded musicians', data: dataList }
            end

            def set_movie
                @movie = Movie.find(params[:id])
                @work = @movie.work
                @workSub = @movie.workSub
                @composer = @movie.composer
                @arranger = @movie.arranger
            end

            def isMatch(movie, query)
                strList = []
                strList.push(movie.work.J_TITLE)
                strList.push(movie.work.E_TITLE)
                strList.push(movie.composer.J_NAME)
                strList.push(movie.composer.E_NAME)
                workSub = movie.workSub
                if workSub != nil
                    strList.push(workSub.J_TITLE)
                    strList.push(workSub.E_TITLE)
                end
                arranger = movie.arranger
                if arranger != nil
                    strList.push(arranger.J_NAME)
                    strList.push(arranger.E_NAME)
                end

                params = query.split

                for param in params do
                    isMatch = false
                    for str in strList do
                        if (str.downcase.include?(param))
                            isMatch =  true
                        end
                    end
                    if (!isMatch)
                        return
                    end
                end

                return true
            end
        end
    end
end
