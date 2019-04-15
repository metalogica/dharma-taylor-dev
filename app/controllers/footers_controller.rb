class FootersController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  def edit
    @biography = Biography.first
  end

  def update
    binding.pry
  end

  private

  def footer_params
    # params.require(:footer).permit(:)
  end

end
