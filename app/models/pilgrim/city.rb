module Pilgrim
  class City < ActiveRecord::Base
    belongs_to :state
    attr_accessible :name, :state_id
  end
end
