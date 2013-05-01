module Pilgrim
  class State < ActiveRecord::Base
    belongs_to :country
    has_many :cities
    attr_accessible :name, :country_id
  end
end
