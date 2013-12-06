class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


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
end
