class ProjectsController < ApplicationController
 

    def index
        @projects = Project.all
        render json: @projects
    end

    def show
        @project = Project.find(params[:id])
        render json: @project
    end

    def create
        @project = @user.Project.create(project_params)
        render json: @project
    end

    def destroy 
        @project = Project.find(params[:id])
        @project.destroy 
    end

    #custom methods

   

    private

    def project_params
      params.permit(:name, :description, :user_id)
    end
end
