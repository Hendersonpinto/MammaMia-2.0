class AddSupermomToMoms < ActiveRecord::Migration[5.2]
  def change
    add_column :moms, :supermom, :boolean, default: false
  end
end
