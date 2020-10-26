class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :img_url
      t.integer :car_id
      t.string :description
      t.string :alt_text

      t.timestamps
    end
  end
end
