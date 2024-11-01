class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.integer :id_pedido
      t.integer :dni
      t.date :fecha_pedido
      t.decimal :total

      t.timestamps
    end
  end
end
