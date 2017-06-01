class AddCommentToMamas < ActiveRecord::Migration
  def change
    add_column :mamas, :comment, :text
  end
end
