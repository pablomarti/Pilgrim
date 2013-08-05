require_dependency "pilgrim/application_controller"

module Pilgrim
  class TagsController < ApplicationController

	  include Pilgrim::Concerns::Controllers::TagsController

  end
end
