class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # protect_from_forgery with: :exception

  # rescue_from Exception, with: :handle_500
  # rescue_from ActionController::RoutingError, with: :handle_404
  # rescue_from ActiveRecord::RecordNotFound,   with: :handle_404

  # def handle_500(exception = nil)
  #   logger.info "Rendering 500 with exception: #{exception.message}" if exception

  #   if request.xhr?
  #     # Ajaxのための処理
  #     render json: { error: '500 error' }, status: 500
  #   else
  #     render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  #   end
  # end

  # def handle_404(exception = nil)
  #   logger.info "Rendering 404 with exception: #{exception.message}" if exception

  #   if request.xhr?
  #     # Ajaxのための処理
  #     render json: { error: '404 error' }, status: 404
  #   else
  #     render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  #   end
  # end




  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday])
  end
end
