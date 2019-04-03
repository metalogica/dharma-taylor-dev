class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join("frontend")

  before_action :load_page_meta_tag, except: :internal_ip

  # Renders layout for Devise authentication page
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end

  def load_page_meta_tag
    page_path = request.path
    # remove forward dash
    # page_path.slice!(0) if page_path.starts_with?('/')

    return if /\/positions\/./.match(page_path)

    meta_tag = ::MetaTag.find_by_page(page_path)
    unless meta_tag
      meta_tag = ::MetaTag.find_by_page('default')
      return unless meta_tag
    end

    @page_title = meta_tag.title
    @page_keywords = meta_tag.keywords
    @page_description = meta_tag.description

    set_meta_tags og: {
      title: meta_tag.title,
      description: meta_tag.description
    }
  end
end
