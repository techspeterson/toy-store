class RemoveDateFromToys < ActiveRecord::Migration[5.2]
  def change
    remove_column :toys, :date, :string
  end
end
