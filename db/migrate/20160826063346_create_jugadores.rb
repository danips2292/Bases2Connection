class CreateJugadores < ActiveRecord::Migration
  def change
    create_table :jugadores do |t|
      t.string :name
      t.integer :ahno
      t.string :last_name

      t.timestamps null: false
    end
  end
end
