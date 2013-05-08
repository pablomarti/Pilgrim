module Pilgrim
  module Methods

	  module ClassMethods
	  end

	  module InstanceMethods
	  	def get_countries
	  		countries = Pilgrim::Country.get_countries
	  		return countries
	  	end

	  	def get_states(country_id)
	  		country = Pilgrim::Country.find(country_id)
	  		country.states
	  	end

	  	def get_cities(state_id)
	  		state = Pilgrim::State.find(state_id)
	  		state.cities
	  	end
	  	
	    def get_locations(country_id = 0, state_id = 0, city_id = 0)
  			countries = get_countries

  			country_id = countries.first.id if country_id == 0
  			@countries = transform_result(countries, country_id)
  			states = get_states(country_id)

  			state_id = states.first.id if state_id == 0 and !states.empty?
  			@states = transform_result(states, state_id)
  			cities = get_cities(state_id)

  			city_id = cities.first.id if city_id == 0 and !cities.empty?
  			@cities = transform_result(cities, city_id)
	    end	    

	    def transform_result(data, selected)
	    	{data: data, selected: selected}
	    end
	  end

  end
end