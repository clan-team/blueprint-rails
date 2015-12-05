class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :filename
      t.references :project
      t.timestamps
    end
  end
end
