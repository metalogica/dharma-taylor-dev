class ProjectsDecorator < SimpleDelegator
  def sort_featured_projects(all_projects)
    projects = self.select {|proj| proj.visibility == true}
    projects.sort
    binding.pry
  end

  def sort_archived_projects
  end
end
