module Api
    module V1
        class MusicianController < ApplicationController
            before_action :set_musician, only: [:show, :update, :destroy]
            # GET /musician
            def index
                musicians = Musician.all

                render json: { status: 'SUCCESS', message: 'Loaded musicians', data: musicians}
            end

            # GET /musician/:id
            def show
                render json: { status: 'SUCCESS', message: 'Loaded the musician', data: @musician }
            end

            def set_musician
                @musician = Post.find(params[:id])
            end
        end
    end
end
