class ImageController < ApplicationController
  def delete
    image = Image.find(params[:id])
    redirect_data = image.project.id
    if image.destroy!
      redirect_to(edit_project_path(redirect_data))
      puts "\n\nCRUD: #{image} deleted successfully.\n\n"
    else
      p "error"
    end
  end
end
