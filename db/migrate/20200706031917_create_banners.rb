class CreateBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.string :image
      # t.string :buttonText
      t.text :disclaimer

      t.timestamps
    end
  end
end
