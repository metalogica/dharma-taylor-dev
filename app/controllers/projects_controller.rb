class ProjectsController < ApplicationController

  def index
    @projects = Project.ordered
    set_title
  end

  def show
    @project = Project.friendly.find(params[:id])
    set_title
    # Sort images by numerical order
    photos = @project.images.select{ |img| img.coverimage != true }.sort_by { |img| img.filename }

    # generate hash
    filenames = photos.each.map(&:filename)
    formats = photos.each.map(&:format)
    image_hash = Hash[filenames.zip(formats)]

    @images = []
    # Loop through hash
    photos.each_with_index do |img, index|
      # Skip the current element if the filename in the hash includes 'skip'
      # If the img is portrait, run the portrait method

      # Generate an array of two portrait photos and place in images array
      @images << [img, photos[index+1]] if img.format == "portrait"
      # Place landscape photo directly in images array
      @images << img if img.format != "portrait"
    end
    byebug
  end

  private

  def create_portrait_array(photo)
    # Create array of two images in portrait  .each_with_index

    # prepend index+1 in the original hash with 'skip-'
  end

  def set_title
    @title = "| Featured" if @projects.present?
    @title = "| #{@project.name}" if @project.present?
  end

  def portrait_photos

  end
end
