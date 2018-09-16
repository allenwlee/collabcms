class AddYtIdToAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :assets, :yt_id, :string
  end
end
