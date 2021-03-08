class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.boolean :is_active, :default => false
      t.boolean :is_complete, :default => false
      t.text :objective
      t.string :zone_start
      t.integer :zone_start_date
      t.integer :zone_start_month
      t.integer :zone_start_year
      t.integer :zone_start_hours
      t.integer :zone_start_minutes
      t.integer :zone_start_seconds
      t.string :zone_end
      t.boolean :premature_end, :default => false
      t.integer :total_objective_time, :default => 0
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true
      t.belongs_to :trinket, null: false, foreign_key: true
      t.belongs_to :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
