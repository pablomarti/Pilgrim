module Pilgrim
  class Country < ActiveRecord::Base
    has_many :states
    attr_accessible :code, :continent, :name, :region

    def self.get_countries
    	order("id ASC")
    end
  end
end
