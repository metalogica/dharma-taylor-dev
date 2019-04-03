class SessionsController < Devise::SessionsController
  # before_action :render_layout

  private

  def render_layout
    render layout: 'layouts/authentication'
  end
end
