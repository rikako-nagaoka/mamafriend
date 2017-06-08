class RenameMamaIdColumnToMessages < ActiveRecord::Migration
  def change
    rename_column :messages, :mama_id, :sender_id
  end
end
