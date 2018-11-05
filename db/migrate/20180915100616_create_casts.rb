class CreateCasts < ActiveRecord::Migration[5.2]
  def change
    create_table :casts do |t|
      t.references :actor
      t.references :movie

      t.timestamps
    end
  end
end
