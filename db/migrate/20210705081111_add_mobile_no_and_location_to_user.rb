class AddMobileNoAndLocationToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mobile_no, :integer
    add_column :users, :location, :string
  end
end
