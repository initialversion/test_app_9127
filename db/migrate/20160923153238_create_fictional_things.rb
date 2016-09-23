class CreateFictionalThings < ActiveRecord::Migration[5.0]
  def change
    create_table :fictional_things do |t|
      t.string :title

      t.timestamps
    end
  end
end
