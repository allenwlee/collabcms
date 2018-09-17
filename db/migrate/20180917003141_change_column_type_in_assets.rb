class ChangeColumnTypeInAssets < ActiveRecord::Migration[5.2]
  def change
  	change_column :assets, :channel_id, :string
  	change_column :assets, :custom_id, :string
  	change_column :assets, :id, :integer
  end
end
