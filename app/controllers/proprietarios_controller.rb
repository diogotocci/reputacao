# encoding: utf-8
class ProprietariosController < ApplicationController
	def index
		@proprietarios = Proprietario.order("nome")
		
		respond_to do |format|
			format.html
			format.js
		end
	end
	
	def show
		@proprietario = Proprietario.find(params[:id])
		
		respond_to do |format|
			format.html
			format.js
		end
	end
	
	def new
		@proprietario = Proprietario.new
	end
	
	def create
		@proprietario = Proprietario.new(params[:proprietario])
		if @proprietario.save
			redirect_to(action: "show", id: @proprietario)
		else 
			render action: "new"
		end
	end
	
	def edit
		@proprietario = Proprietario.find(params[:id])
	end
	
	def update
		#recebe o id
		@proprietario = Proprietario.find(params[:id])
		if @proprietario.update_attributes(params[:proprietario])
			redirect_to(action: "show", id: @proprietario)
		else
			render action: "edit"
		end
	end
	
	def destroy
		#recebe o id
		@proprietario = Proprietario.find(params[:id])
		#deleta o proprietario pelo id recebido
		@proprietario.destroy
		
		#retorna para a index
		redirect_to(action: "index")
	end
end
