class BiographyController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  layout "dashboard", except: [:index]

  def index
    set_title
    @biography = Biography.first
  end

  def edit
    @biography = Biography.first
  end

  def update
  end

  private

  def set_title
    @title="| Information"
  end
end
