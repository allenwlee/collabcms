class Asset < ApplicationRecord
  belongs_to :channel


	def group_asset_raw file_path, chunk_size
		selected = []
		counter = 0
		CSV.foreach(file_path, headers: true, converters: :numeric).with_index do |row, i|
			counter += 1
			@asset = Asset.create_or_find_by! yt_id: row['Asset ID']
			@asset.update do |a|
				a.custom_id = row['Custom ID']
				a.channel_id = row['Asset Channel ID']
			end
			@view = View.create! do |v|
				v.start_date = row['Day']
				v.quantity = row['Owned Views']
				v.asset_id = @asset.id
				v.country_id = row['Country']
			end
		end
  end
  
end
