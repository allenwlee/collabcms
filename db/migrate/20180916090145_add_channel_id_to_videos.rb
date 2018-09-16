class AddChannelIdToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :channel_id, :string
  end
end
