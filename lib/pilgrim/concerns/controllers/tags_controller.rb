module Pilgrim
  module Concerns
    module Controllers
      module TagsController
        extend ActiveSupport::Concern
    		
		  def change_location
		    @block = params[:block]
		    @kind = params[:kind]
		    @form_name = params[:form_name]
	        @city_name = params[:city_name]
	        @city_html_class = params[:city_html_class]
		    value = params[:value]

		    @states = nil
		    @cities = nil

		    if @kind == "country"
		      @state_name = params[:state_name]
		      @state_html_class = params[:state_html_class]
		      
		      country = Pilgrim::Country.find(value)
		      
		      states = country.states.order("name ASC") rescue []
		      @states = transform_result(states, 0)
		      
		      cities = states.first.cities.order("name ASC") rescue []
		      @cities = transform_result(cities, 0)
		    elsif @kind == "state"
		      state = Pilgrim::State.find(value)
		      
		      cities = state.cities.order("name ASC") rescue []
		      @cities = transform_result(cities, 0)
		    end
		  end    		

      end
    end
  end
end