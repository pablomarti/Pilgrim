module Pilgrim
  module Methods

	  module ClassMethods
	  end

	  module InstanceMethods
	  	def get_countries(mode = "all", arr_countries = [])
	  		countries = Pilgrim::Country.get_countries(mode, arr_countries)
	  		return countries
	  	end

	  	def get_states(country_id)
	  		country = Pilgrim::Country.find(country_id)
	  		country.states.order("name ASC")
	  	end

	  	def get_cities(state_id)
	  		state = Pilgrim::State.find(state_id)
	  		state.cities.order("name ASC")
	  	end
	  	
	    #def get_locations(country_id = 0, state_id = 0, city_id = 0)
	    def get_locations(options = {})
	    	country_id = options.has_key?(:country_id) ? options[:country_id] : 0
	    	state_id = options.has_key?(:state_id) ? options[:state_id] : 0
	    	city_id = options.has_key?(:city_id) ? options[:city_id] : 0
	    	mode = options.has_key?(:mode) ? options[:mode] : "all"
	    	arr_countries = options.has_key?(:countries) ? options[:countries] : []

  			tmp_countries = get_countries(mode, arr_countries)

  			country_id = tmp_countries.first.id if country_id == 0
  			countries = transform_result(tmp_countries, country_id)
  			tmp_states = get_states(country_id)

  			state_id = tmp_states.first.id if state_id == 0 and !tmp_states.empty?
  			states = transform_result(tmp_states, state_id)
  			tmp_cities = get_cities(state_id)

  			city_id = tmp_cities.first.id if city_id == 0 and !tmp_cities.empty?
  			cities = transform_result(tmp_cities, city_id)

  			{
  				countries: countries,
  				states: states,
  				cities: cities
  			}
	    end	    

	    def transform_result(data, selected)
	    	{data: data, selected: selected}
	    end
	  end

  end
end