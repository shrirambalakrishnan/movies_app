class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string  :name, null: false
      t.date    :date_of_birth
      t.string  :gender

      t.timestamps
    end
  end
end
