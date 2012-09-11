class CreateTiposProprietariosJoinTable < ActiveRecord::Migration
  def self.up
	#impedindo a criação de chaves primaria com auto incremento
	create_table :tipos_proprietarios, id: false do |t|
	t.integer :tipo_id
	t.integer :proprietario_id
end
  end

  def self.down
	drop_table :tipos_proprietarios
  end
end
