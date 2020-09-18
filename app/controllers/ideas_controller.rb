class IdeasController < ApplicationController

    def index
        @ideas = Idea.all
        render json: @ideas
    end
    
    def create
        @idea = Idea.create(idea_params)
        render json: @idea
    end

    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
    end

    private

    def idea_params
        params.require(:idea).permit(:description, :user_id, :project_id)
    end
end
