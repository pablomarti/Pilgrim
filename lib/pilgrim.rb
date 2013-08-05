require "pilgrim/engine"
require "pilgrim/load_methods"

Dir[File.dirname(__FILE__) + "/pilgrim/concerns/controllers/*.rb"].each{ |f| require "pilgrim/concerns/controllers/#{File.basename(f, ".rb")}" }

module Pilgrim
end
