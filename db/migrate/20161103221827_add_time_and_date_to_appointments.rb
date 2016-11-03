class AddTimeAndDateToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :time_slot, :string
    add_column :appointments, :date, :string
  end
end
