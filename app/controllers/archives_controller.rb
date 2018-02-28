class ArchivesController < ApplicationController
  def show
    @archive = Image.archive
    set_title
  end

  private

  def set_title
    @title="| Archive"
  end
end
