class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :notes
      t.references :user, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
