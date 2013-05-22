class WelcomeController < ApplicationController
  
  def index
  	@data1 = get_locations
  	@data2 = get_locations({mode: "exclude", countries: ["Japan", "El Salvador", "Colombia", "Jamaica", "Spain"]}) #No hard feelings, it was the first name it came to my mind (I love Japan)
  	@data3 = get_locations({mode: "include", countries: ["Japan", "El Salvador", "Colombia", "Jamaica", "Spain"]})
  end

end
