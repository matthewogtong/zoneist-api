class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :image
      t.integer :price, :default => 0

      t.timestamps
    end
  end
end
