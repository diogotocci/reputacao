# encoding: utf-8
class Item < ActiveRecord::Base
	attr_accessible :tipo_id, :conteudo
	#validações
	validates_presence_of :conteudo, message: " - deve ser preenchido"
	validates_presence_of :tipo_id
	validates_associated :tipo
	
	belongs_to :tipo
end
