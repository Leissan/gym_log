class LogsController < ApplicationController
         # GET /spices
     def index
        logs = Log.all
        render json: logs
    end

    def show
        log = Log.find_by(id: params[:id])
        if log
            render json: log, status: :ok
        else 
            render json: {error: "log not found"}, status: :not_found
        end
    end

    # POST /spices
    def create
        log = Log.create(log_params)
        render json: log, status: :created
    end

    def update
        log = Log.find_by(id: params[:id])
        log.update(log_params)
        render json: log
    end
    
    def destroy
        log = Log.find_by(id: params[:id])
        log.destroy
        head :no_content
    end

    private
    def log_params
        params.permit(:date, :body, :user_id, :exercise_id)
    end
end
