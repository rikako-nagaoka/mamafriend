class RenameUserIdColumnToMessages < ActiveRecord::Migration
  def change
        rename_column :messages, :user_id, :receiver_id
  end
end
