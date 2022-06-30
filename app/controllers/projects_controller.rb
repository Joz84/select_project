class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(:position)
  end


  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    # byebug
  end

  private

  def project_params
    params.require(:project).permit(:position)
  end


end
