class ApplicationController < ActionController::API
    # Knock inclusion
    include Knock::Authenticable
    
end
