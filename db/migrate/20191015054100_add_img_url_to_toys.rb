class AddImgUrlToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :img_url, :text
  end
end
