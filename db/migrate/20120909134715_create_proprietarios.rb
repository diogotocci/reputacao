class CreateProprietarios < ActiveRecord::Migration
  def change
    create_table :proprietarios do |t|
	  t.string :nome, limit: 50
      t.string :tipo_imovel
	  t.timestamps
    end
  end
end
