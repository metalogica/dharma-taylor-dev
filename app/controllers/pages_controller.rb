class PagesController < ApplicationController

  def information
    set_title
  end

  def featured
    @title="| Featured"
  end

  private

  def set_title
    @title="| Information"
  end

end
