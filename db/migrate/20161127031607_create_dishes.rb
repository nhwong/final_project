class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.text :dish

      t.timestamps null: false
    end
  end
end
