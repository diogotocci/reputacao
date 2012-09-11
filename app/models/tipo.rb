# encoding: utf-8
class Tipo < ActiveRecord::Base
	attr_accessible :tipo
	#validacoes
	validates_presence_of :tipo, message: " - deve ser preenchido"
	validates_uniqueness_of :tipo, message: " - tipo de acomodacao ja cadastrado"
	
	validate :validate_presence_of_more_than_one_tipo
	private
		def validate_presence_of_more_than_one_tipo
		errors.add("tipos", "deve haver pelo menos um tipo") if tipos.empty?
		end
end
