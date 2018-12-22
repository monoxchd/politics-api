class User < ApplicationRecord
    has_secure_password
    
    # Password validations
    validates_length_of         :password, maximum: 32, minimum: 6, allow_nil: true, allow_blank: false
    validates_confirmation_of   :password, allow_nil: true, allow_blank: false
    
    # Normalize user and email
    before_validation {
        (self.name = self.name.to_s.downcase) && (self.email = self.email.to_s.downcase)
    }
    
    # Name and email validations
    validates                   :name, :email, presence: true, uniqueness: true
    
    
end
