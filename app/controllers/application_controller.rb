class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    
  private
      
    def record_not_found
      render plain: "Not Found", status: 422
    end

end
