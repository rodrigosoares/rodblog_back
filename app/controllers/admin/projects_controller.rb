module Admin
  class ProjectsController < Admin::ApplicationController
    def find_resource(param)
      Project.find_by!(slug: param)
    end
  end
end
