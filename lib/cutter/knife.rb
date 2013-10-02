require "cutter/knife/version"

module Cutter
  module Knife

    # Your code goes here...
    require 'sinatra'
    require 'nokogiri'

    require 'cutter/knife/server'
    require 'cutter/knife/option'

    def self.run!(args)
      Server.run!(Option.new(args))
    end
  end
end
