class CreateDinosaurs < ActiveRecord::Migration[7.0]
  def change
    create_table :dinosaurs do |t|
      t.integer :height
      t.integer :price
      t.integer :review
      t.date :availability_start
      t.date :availability_end
      t.references :user, null: false, foreign_key: true
      t.integer :weight
      t.string :element
      t.integer :age
      t.string :character

      t.timestamps
    end
  end
end
