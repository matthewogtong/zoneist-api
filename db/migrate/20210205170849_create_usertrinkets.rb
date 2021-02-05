class CreateUsertrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :usertrinkets do |t|
      t.boolean :is_bought, :default => false
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trinket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
