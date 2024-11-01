class CreateDetallePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :detalle_pedidos do |t|
      t.integer :id_detalle
      t.integer :id_pedido
      t.integer :id_producto

      t.timestamps
    end
  end
end
