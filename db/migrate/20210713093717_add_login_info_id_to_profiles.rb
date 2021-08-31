class AddLoginInfoIdToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :login_info_id, :integer
  end
end
