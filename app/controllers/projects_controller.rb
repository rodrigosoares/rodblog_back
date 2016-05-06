class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    #code
  end
end
