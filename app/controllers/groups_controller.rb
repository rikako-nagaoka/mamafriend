class GroupsController < ApplicationController
  def index
    @users = []
    current_user.groups.each do |group|
      group.users.each do |user|
        unless user.id == current_user.id
          @users << user
        end
      end
    end
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
    @group.save
    redirect_to action: :index
  end


  private

  def group_params
    params.require(:group).permit(user_ids: [])
  end
end
