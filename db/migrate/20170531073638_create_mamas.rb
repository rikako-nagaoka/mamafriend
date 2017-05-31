class CreateMamas < ActiveRecord::Migration
  def change
    create_table :mamas do |t|
      t.string    :name
      t.string    :adress
      t.integer   :age
      t.integer   :numchild
      t.integer   :work
      t.integer   :frequency
      t.timestamps 
    end
  end
end
