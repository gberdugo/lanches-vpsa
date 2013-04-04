class CreateLanches < ActiveRecord::Migration
  def change
    create_table :lanches do |t|
      t.string :pessoa
      t.string :descricao

      t.timestamps
    end
  end
end
