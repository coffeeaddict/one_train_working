# OneTrainWorking
#
# Provide a hex version of the Authenticity Token instead of the
# b0rken base64 implementation
#
module ActionController::RequestForgeryProtection
  def form_authenticity_token() 
    session[:_csrf_token] ||= ActiveSupport::SecureRandom.hex(32)
  end
end
