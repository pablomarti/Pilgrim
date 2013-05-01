module Pilgrim
  module ApplicationHelper

  	def select_location_tag(form_name, params = {})
  		block = params[:block].nil? ? "main" : params[:block]
  		render :partial => "pilgrim/tags/container", :locals => { form_name: form_name, params: params, block: block }
  	end

  	def select_for_country(form_name, block, params = {})
  		country_name = params[:country][:name] rescue "country_id"
  		country_html_class = params[:country][:html_class] + " dropdown_location" rescue "dropdown_location"
  		country_html_id = block + "_country"

  		render  :partial => "pilgrim/tags/dropdown", 
              :locals => { 	
                              form_name: form_name, 
  														name: country_name, 
  														selected_position: 1, 
  														kind: "country", 
  														block: block, 
  														html_class: country_html_class, 
  														html_id: country_html_id,
  														data: @countries
  		}
  	end

  	def select_for_state(form_name, block, params = {})
  		state_name = params[:state][:name] rescue "state_id"
  		state_html_class = params[:state][:html_class] + " dropdown_location" rescue "dropdown_location"
  		state_html_id = block + "_state"

  		render :partial => "pilgrim/tags/dropdown", :locals => { 	form_name: form_name, 
  																	name: state_name, 
  																	selected_position: 1, 
  																	kind: "state", 
  																	block: block, 
  																	html_class: state_html_class, 
  																	html_id: state_html_id,
  																	data: @states
  		}
  	end

  	def select_for_city(form_name, block, params = {})
  		city_name = params[:city][:name] rescue "city_id"
  		city_html_class = params[:city][:html_class] rescue ""
  		city_html_id = block + "_city"

  		render :partial => "pilgrim/tags/dropdown", :locals => { 	form_name: form_name, 
  																	name: city_name, 
  																	selected_position: 1, 
  																	kind: "city", 
  																	block: block, 
  																	html_class: city_html_class, 
  																	html_id: city_html_id,
  																	data: @cities
  		}
  	end

  	def select_for_element_aux(form_name, name, data, selected_position, kind, block, html_class, html_id)
  		render :partial => "pilgrim/tags/dropdown_aux", :locals => { form_name: form_name, name: name, data: data, selected_position: selected_position, :kind => kind, :block => block, :html_class => html_class, :html_id => html_id }
  	end

  end
end