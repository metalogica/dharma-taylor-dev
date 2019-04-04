class ArchivesController < ApplicationController
  before_action :authenticate_user!, except: :archives_list
  before_action :set_layout, except: :archives_list

  def archives_list
    @archive = Image.archive.order(url: 'desc')
    set_title
  end

  def index
  end

  def show
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
    render layout: 'layouts/dashboard'
  end
end
