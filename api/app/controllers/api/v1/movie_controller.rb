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
                param = 
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

            def isMatch(movie, param)
                if (movie.work.J_TITLE.include?(param))
                    return true
                end
                if (movie.work.E_TITLE.include?(param))
                    return true
                end

                workSub = movie.workSub
                if workSub != nil
                    if (movie.workSub.J_TITLE.include?(param))
                        return true
                    end
                    if (movie.workSub.E_TITLE.include?(param))
                        return true
                    end
                end

                if (movie.composer.J_NAME.include?(param))
                    return true
                end
                if (movie.composer.E_NAME.include?(param))
                    return true
                end

                arranger = movie.arranger
                if arranger != nil
                    if (arranger.J_NAME.include?(param))
                        return true
                    end
                    if (arranger.E_NAME.include?(param))
                        return true
                    end
                end
                return false
            end
        end
    end
end
