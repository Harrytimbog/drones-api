class CreateDrones < ActiveRecord::Migration[6.0]
  def change
    create_table :drones do |t|
      t.string :model
      t.string :brand
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
