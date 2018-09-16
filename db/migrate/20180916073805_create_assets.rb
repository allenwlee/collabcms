class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.integer :custom_id

      t.timestamps
    end
  end
end
