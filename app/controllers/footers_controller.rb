class FootersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_layout

  def edit
  end

  def update
  end

  private

  def set_layout
    render layout: 'layouts/dashboard'
  end

end
