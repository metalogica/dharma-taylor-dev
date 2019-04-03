class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_layout

  def featured
  end

  def archive
  end

  def information
    @projects = Project.ordered
    set_title
  end

  def footer
  end

  private

  def set_layout
    render layout: 'layouts/dashboard'
  end

end
