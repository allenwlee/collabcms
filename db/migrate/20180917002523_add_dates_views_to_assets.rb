class AddDatesViewsToAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :assets, :owned_views, :bigint
    add_column :assets, :date_start, :datetime
    add_column :assets, :date_end, :datetime
    add_reference :assets, :cms, foreign_key: true
  end
end
