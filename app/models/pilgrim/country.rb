module Pilgrim
  class Country < ActiveRecord::Base
    has_many :states
    attr_accessible :code, :continent, :name, :region

    def self.get_countries(mode = "all", arr_countries = [])
    	if mode == "include"
    		where("name IN (?)", arr_countries).order("name ASC")
    	elsif mode == "exclude"
    		where("name NOT IN (?)", arr_countries).order("name ASC")
    	else
    		order("name ASC")
    	end 
    end
  end
end