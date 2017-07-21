class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :group, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :body
      t.timestamps 
    end
  end
end
