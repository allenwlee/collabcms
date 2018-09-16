class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.string :yt_id
      t.integer :quantity
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
