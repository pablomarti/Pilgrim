module Pilgrim
  module Methods

	  module ClassMethods
	  end

	  module InstanceMethods
	  	def get_countries
	  		Pilgrim::Country.get_countries
	  	end

	  	def get_states(country_id)
	  		country = Pilgrim::Country.find(country_id)
	  		country.states
	  	end

	  	def get_cities(state_id)
	  		state = Pilgrim::State.find(state_id)
	  		state.cities
	  	end
	  	
	    def get_locations
  			@countries = get_countries
  			@states = get_states(@countries.first.id)
  			@cities = get_cities(@states.first.id)
	    end	    
	  end

  end
end