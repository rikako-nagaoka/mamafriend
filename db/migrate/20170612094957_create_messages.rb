class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.integer :receiver_id
      t.text    :body
      t.timestamps
    end
  end
end
