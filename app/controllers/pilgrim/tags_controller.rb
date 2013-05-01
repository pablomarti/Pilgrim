require_dependency "pilgrim/application_controller"

module Pilgrim
  class TagsController < ApplicationController

	  def change_location
	    @block = params[:block]
	    @kind = params[:kind]
	    @name = params[:name]
	    @html_class = params[:html_class]
	    @form_name = params[:form_name]
	    value = params[:value]

	    @states = nil
	    @cities = nil

	    if @kind == "country"
	      country = Pilgrim::Country.find(value)
	      @states = country.states
	      @cities = @states.first.cities rescue []
	    elsif @kind == "state"
	      state = Pilgrim::State.find(value)
	      @cities = state.cities
	    end
	  end

  end
end
