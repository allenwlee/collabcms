class AddCmsIdToVideos < ActiveRecord::Migration[5.2]
  def change
  	add_reference :videos, :cms, index: true
  end
end
