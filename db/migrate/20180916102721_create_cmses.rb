class CreateCmses < ActiveRecord::Migration[5.2]
  def change
    create_table :cmses do |t|
      t.string :name

      t.timestamps
    end
  end
end
