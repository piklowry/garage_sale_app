class CreateGarageItems < ActiveRecord::Migration
  def change
    create_table :garage_items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :rating
      t.string :availability
    end
  end
end
