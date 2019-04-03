module ApplicationHelper

  def project_init
    binding.pry
    @project = Project.first.description
  end

end
