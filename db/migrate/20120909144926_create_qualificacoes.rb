class CreateQualificacoes < ActiveRecord::Migration
  def self.up
    create_table :qualificacoes do |t|
		t.integer :cliente_id
		t.integer :proprietario_id
		t.float :nota
		t.timestamps
    end
	add_index(:qualificacoes, :cliente_id)
	add_index(:qualificacoes, :proprietario_id)
  end
end
