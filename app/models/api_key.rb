# This is how we grant access to the API.
# User logs in via the API. Access_token is granted and returned to them.
# On subsequent logins they use the access_token rather than their credentials.

class ApiKey < ActiveRecord::Base
  attr_accessible :access_token, :expires_at, :user_id, :active, :application
  before_create :generate_access_token
  before_create :set_expiration
  belongs_to :user

  def expired?
    DateTime.now >= self.expires_at
  end

  private
    def generate_access_token
      begin
        self.access_token = SecureRandom.hex
      end while self.class.exists?(access_token: access_token)
    end

    def set_expiration
      self.expires_at = DateTime.now+30
    end
end
