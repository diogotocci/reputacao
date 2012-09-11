module ApplicationHelper

	def menu_principal
		menu = %w(cliente qualificacao proprietario)
		menu_principal = "|"
		menu.each do |item|
		menu_principal << "|"
		menu_principal << link_to(item, :controller => item.pluralize)
		menu_principal << "|"
		end
	menu_principal << "|"
	raw menu_principal
	end

end
