class CreateToys < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.string :name
      t.integer :cost
      t.string :info
      t.string :image

      t.timestamps
    end
  end
end
