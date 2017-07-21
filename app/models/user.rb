class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  has_many :group_users
  has_many :groups, through: :group_users

  def be_friend?(current_user)
    tmp = true
    groups.each do |group|
      if group.users.pluck(:id).include?(current_user.id)
        tmp = false
        break
      else
        tmp = true
      end
    end
    return tmp
  end
end
