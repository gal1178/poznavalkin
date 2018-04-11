class AddRazdelToToys < ActiveRecord::Migration[5.1]
  def change
    add_column :toys, :Razdel, :string
  end
end
