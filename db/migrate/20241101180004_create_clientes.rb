class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.integer :dni
      t.string :nombre
      t.integer :edad
      t.string :email

      t.timestamps
    end
  end
end
