class CreateMamas < ActiveRecord::Migration
  def change
    create_table :mamas do |t|
      t.string    :name
      t.string    :adress1
      t.string    :adress2
      t.integer   :age
      t.integer   :numchild
      t.integer   :work
      t.integer   :private
      t.integer   :frequency
      t.integer   :ivent
      t.integer   :nickname
      t.timestamps 
    end
  end
end
