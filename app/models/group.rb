class Group < ActiveRecord::Base
  has_many :users, through: :group_user
  has_many :group_user
  accepts_nested_attributes_for :group_users
end
