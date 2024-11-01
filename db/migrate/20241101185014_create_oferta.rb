class CreateOferta < ActiveRecord::Migration[7.2]
  def change
    create_table :oferta do |t|
      t.integer :id_oferta
      t.integer :id_producto
      t.date :fecha

      t.timestamps
    end
  end
end
