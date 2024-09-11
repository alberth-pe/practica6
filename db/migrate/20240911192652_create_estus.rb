class CreateEstus < ActiveRecord::Migration[7.2]
  def change
    create_table :estus do |t|
      t.string :nombres
      t.string :apellidos
      t.string :carrera
      t.string :carnet
      t.date :nacimiento
      t.integer :celular

      t.timestamps
    end
  end
end
