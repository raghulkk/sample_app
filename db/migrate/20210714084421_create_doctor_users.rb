class CreateDoctorUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_users do |t|
      t.references :user
      t.references :doctor

      t.timestamps
    end
  end
end
