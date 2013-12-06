class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation
  has_one :apikey, class_name: 'ApiKey', foreign_key: 'user_id'
  before_save :generate_api_key

  def can_report?
    puts "PERMISSION MASK: #{self.permission_mask}"
    return self.permission_mask & 1 == 1
  end

  def can_officiate?
    puts "PERMISSION MASK: #{self.permission_mask}"
    return self.permission_mask & 8 == 8
  end

  def superuser?
    puts "PERMISSION MASK: #{self.permission_mask}"
    return self.permission_mask & 256 == 256
  end

  def generate_api_key
    ApiKey.create user_id: id
  end
end
