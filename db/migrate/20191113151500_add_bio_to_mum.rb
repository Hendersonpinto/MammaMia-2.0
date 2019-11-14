class AddBioToMum < ActiveRecord::Migration[5.2]
  def change
    add_column :moms, :bio, :text
  end
end
