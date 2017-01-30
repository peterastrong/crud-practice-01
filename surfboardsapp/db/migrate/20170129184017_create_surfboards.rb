class CreateSurfboards < ActiveRecord::Migration[5.0]
  def change
    create_table :surfboards do |t|
      t.string :shaper
      t.float :length

      t.timestamps
    end
  end
end
