class CreateUsuarioIntranets < ActiveRecord::Migration[7.2]
  def change
    create_table :usuario_intranets do |t|
      t.integer :id_usuario
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
