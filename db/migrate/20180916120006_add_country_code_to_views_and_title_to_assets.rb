class AddCountryCodeToViewsAndTitleToAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :views, :country_code, :string
    add_column :assets, :title, :string
  end
end
