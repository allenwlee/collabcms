class AddCountryCodeToChannel < ActiveRecord::Migration[5.2]
  def change
    add_column :channels, :country_code, :string
  end
end
