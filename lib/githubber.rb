require "httparty"
require "pry"

require "githubber/version"
require "githubber/issues"

module Githubber
  # Your code goes here...
  api = Issues.new("861af2db0c4cfc39ce9b835206a1511d595cb8b9")
  binding.pry
end
