class ArchivesController < ApplicationController
  def show
    @archive = Image.archive
  end
end
