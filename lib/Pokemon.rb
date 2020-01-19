require 'pry'
require 'json'
require 'httparty'
require 'open-uri'

require_relative "./Pokemon/version"
require_relative "./Pokemon/api"
require_relative "./Pokemon/cli"

module Pokemon
  class Error < StandardError; 
    end
end
