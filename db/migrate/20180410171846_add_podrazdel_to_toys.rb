class AddPodrazdelToToys < ActiveRecord::Migration[5.1]
  def change
    add_column :toys, :Podrazdel, :string
  end
end
