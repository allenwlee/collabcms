class AddIndicesToViewsAssetsChannelsVideos < ActiveRecord::Migration[5.2]
  def change
  	add_reference :assets, :channel, index: true

  end
end
