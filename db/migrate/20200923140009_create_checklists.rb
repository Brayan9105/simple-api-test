class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.string :nombre
      t.string :creado_por

      t.timestamps
    end
  end
end
