class ProjectsController < ApplicationController

    def show
        @project = Project.find(params[:id])
        render json :@project
    end

    def create
        @project = Project.create(project_params)
    end

    private

    def project_params
      params.permit(:user_id, :category_id, :description :complete)
    end
end
