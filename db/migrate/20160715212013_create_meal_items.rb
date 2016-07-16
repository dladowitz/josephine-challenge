class CreateMealItems < ActiveRecord::Migration
  def change
    create_table :meal_items do |t|
      t.string :title
      t.text :description
      t.belongs_to :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
