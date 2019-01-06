class PagesController < ApplicationController

  def information
    set_title
  end

  private

  def set_title
    @title="| Information"
  end

end
