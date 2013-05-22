module Pilgrim
  class Country < ActiveRecord::Base
    has_many :states
    attr_accessible :code, :continent, :name, :region

    def self.get_countries(mode = "all", arr_countries = [])
    	if mode == "include"
    		where("name IN (?)", arr_countries).order("id ASC")
    	elsif mode == "exclude"
    		where("name NOT IN (?)", arr_countries).order("id ASC")
    	else
    		order("id ASC")
    	end 
    end
  end
end
