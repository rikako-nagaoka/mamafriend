class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :mama_id
      t.text    :message
      t.timestamps
    end
  end
end
