class AddLoginInfoIdInUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :login_info_id, :integer
  end
end
