class ArchivesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]
  before_action :set_layout

  def index
  end

  def show
    @archive = Image.archive.order(url: 'desc')
    set_title
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_title
    @title="| Archive"
  end

  def set_layout
    render layout: 'layouts/dashboard' if current_user.admin == true
  end
end
