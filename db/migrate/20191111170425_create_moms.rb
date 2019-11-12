class CreateMoms < ActiveRecord::Migration[5.2]
  def change
    create_table :moms do |t|
      t.string :name
      t.string :last_name
      t.string :location
      t.integer :price
      t.references :owner, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
