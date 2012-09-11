# encoding: utf-8
class Cliente < ActiveRecord::Base
	attr_accessible :nome, :idade
	#validações de campo
	validates_presence_of :nome, message: " - deve ser preenchido"
	validates_uniqueness_of :nome, message: " - nome ja cadastrado"
	validates_numericality_of :idade, greater_than: 17, message: " - deve ser maior de 18 anos"
	
	#relacionamentos
	has_many :qualificacoes
end
