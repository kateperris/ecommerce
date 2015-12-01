class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.text :description
      t.string :image_url
      t.string :string

      t.timestamps
    end
  end
end
