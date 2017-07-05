class RemoveColumnFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :name, :string
  end
end
