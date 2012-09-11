# encoding: utf-8
class ClientesController < ApplicationController
	def index
		@clientes = Cliente.order("nome")
	end
	
	def show
		@cliente = Cliente.find(params[:id])
		
		respond_to do |format|
			format.html
			format.js
		end
	end
	
	def new
		@cliente = Cliente.new
		
		respond_to do |format|
			format.html
			format.js
		end
	end
	
	def create
		@cliente = Cliente.new(params[:cliente])
		if @cliente.save
			redirect_to(action: "show", id: @cliente)
		else 
			render action: "new"
		end
	end
	
	def edit
		@cliente = Cliente.find(params[:id])
	end
	
	def update
		#recebe o id
		@cliente = Cliente.find(params[:id])
		if @cliente.update_attributes(params[:cliente])
			redirect_to(action: "show", id: @cliente)
		else
			render action: "edit"
		end
	end
	
	def destroy
		#recebe o id
		@cliente = Cliente.find(params[:id])
		#deleta o cliente pelo id recebido
		@cliente.destroy
		
		#retorna para a index
		redirect_to(action: "index")
	end
end