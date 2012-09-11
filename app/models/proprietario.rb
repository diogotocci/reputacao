# encoding: utf-8
class Proprietario < ActiveRecord::Base
	attr_accessible :nome, :nacionalidade
	#validações de campo
	validates_presence_of :nome, message: ": Campo nome obrigatorio"
	validates_presence_of :nacionalidade, message: ": Campo nacionalidade obrigatorio"
	validates_uniqueness_of :nome, message: ": Nome ja cadastrado"
	validate :first_letter_uppercase
	#Definindo uma validação
	private
	def first_letter_uppercase
		errors.add(:nome, ": A primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end	
	#relacionamentos
	has_many :qualificacoes
end
