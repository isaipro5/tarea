class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.integer :id_producto
      t.string :nombre
      t.string :categoria
      t.decimal :precio

      t.timestamps
    end
  end
end
