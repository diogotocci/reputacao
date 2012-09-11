class AddColumnNacionalidadeToProprietario < ActiveRecord::Migration
  def change
    add_column :proprietarios, :nacionalidade, :string, limit: 30
  end
end
