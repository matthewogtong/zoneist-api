class CreateTrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :trinkets do |t|
      t.string :name
      t.integer :price, :default => 0

      t.timestamps
    end
  end
end
