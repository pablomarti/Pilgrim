module Pilgrim
  class Country < ActiveRecord::Base
    has_many :states
    attr_accessible :code, :continent, :name, :region
  end
end
