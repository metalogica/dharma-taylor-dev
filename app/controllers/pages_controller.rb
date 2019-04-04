class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_layout, except: [:index]

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

  def set_layout
    render layout: 'layouts/dashboard'
  end
end
