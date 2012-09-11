# encoding: utf-8
class Qualificacao < ActiveRecord::Base
	attr_accessible :nota, :cliente_id, :proprietario_id
	#validações de campo
	validates_presence_of :nota, message: " - deve ser preenchido"
	validates_numericality_of :nota, greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: " - somente numeros entre 0 e 10"
	validates_presence_of :cliente_id, :proprietario_id
	validates_associated :cliente, :proprietario
	
	#relacionamentos
	belongs_to :cliente
	belongs_to :proprietario
end
