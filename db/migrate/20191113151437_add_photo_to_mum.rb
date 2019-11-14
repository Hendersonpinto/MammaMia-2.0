class AddPhotoToMum < ActiveRecord::Migration[5.2]
  def change
    add_column :moms, :photo, :string
  end
end
