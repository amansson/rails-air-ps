class AddPhotoToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :photo, :string
  end
end
