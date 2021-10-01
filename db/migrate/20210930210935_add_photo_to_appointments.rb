class AddPhotoToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :photo1, :attachment
    add_column :appointments, :photo2, :attachment
    add_column :appointments, :photo3, :attachment
  end
end
