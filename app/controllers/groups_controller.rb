class GroupsController < ApplicationController
  # def index
  #   @users = []
  #   current_user.groups.each do |group|
  #     group.users.each do |user|
  #       unless user.id == current_user.id
  #         @users << user
  #         @users.uniq!{|user|user.id}
  #       end
  #     end
  #   end
  # end

  def index
    @groups = current_user.groups
  end

  def create
    group = Group.new
    group.users << User.find(create_params[:user_id])
    group.users << current_user
    group.save
    redirect_to action: :index

  end

  private
  def create_params
    params.require(:group).permit(:user_id)
  end

#   def create
#     binding.pry
#     @group = Group.new(group_params)
#     binding.pry
#     @group.users << current_user
#     @group.save
#     redirect_to action: :index
#   end


#   private

#   def group_params

#     params.require(:groupgroup).permit(user_ids: [])
#   end
# end
end
