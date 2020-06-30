class ProjectsController < ApplicationController
    # before_action :authorized, only: [:create]

    def index
        projects = Project.all
        render json: projects
    end

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

    private

    def project_params
      params.permit(:user_id, :category_id, :name, :description, :complete)
    end
end
