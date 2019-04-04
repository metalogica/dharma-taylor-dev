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
    @biography = Biography.find(params[:id])
    @biography.update(biography_params)
    if @biography.save!
      redirect_to(edit_biography_path(params[:id]))
    else
      render "edit"
    end
  end

  private

  def set_title
    @title="| Information"
  end

  private

  def biography_params
    params.require(:biography).permit(:id, :information)
  end
end
