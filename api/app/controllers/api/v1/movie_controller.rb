module Api
    module V1
        class MovieController < ApplicationController
            before_action :set_movie, only: [:show, :update, :destroy]
            # GET /movie
            def index
                movies = Movie.all
                dataList = []

                for movie in movies do
                    data = { movie: movie ,work: movie.work ,workSub: movie.workSub, composer: movie.composer, agganger: movie.agganger }
                    dataList.push(data)
                end

                render json: { status: 'SUCCESS', message: 'Loaded musicians', data: dataList }
            end

            # GET /movie/:id
            def show
                render json: { movie: @movie ,work: @work ,workSub: @workSub, composer: @composer, agganger: @arranger }
            end

            def set_movie
                @movie = Movie.find(params[:id])
                @work = @movie.work
                @workSub = @movie.workSub
                @composer = @movie.composer
                @arranger = @movie.arranger
            end
        end
    end
end
