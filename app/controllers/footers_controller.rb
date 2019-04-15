class FootersController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  def edit
    @biography = Biography.first
  end

  def update
    @biography = Biography.first
    @biography.update(
      telephone_contact: footer_params[:telephone_contact],
      email_primary: footer_params[:email_primary],
      email_contact: footer_params[:email_contact],
      location: footer_params[:location],
      social_media: parse_social_media_params
      )
    if @biography.save!
      redirect_to(edit_footer_path)
    else
      p "error"
    end
  end

  private

  def footer_params
    params.require(:footer).permit(:telephone_contact, :email_primary, :email_contact, :location, {social_media_name: []}, {social_media_url: []})
  end

  def parse_social_media_params
    key = footer_params[:social_media_name]
    value = footer_params[:social_media_url]
    value = parse_url(value)
    sm_data = Hash[key.zip(value)]
  end

  def parse_url(url_array)
    stub = "http://"
    pattern = /h/i
    submit_url = url_array.map do |url|
      if (url[0] =~ pattern).nil?
        url = stub + url
      else
        url
      end
    end
  end

end
