class CreateItens < ActiveRecord::Migration
  def change
    create_table :itens do |t|
		t.integer :tipo_id
		t.text :conteudo
		t.timestamps
    end
  end
end
