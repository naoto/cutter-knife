require 'erb'

module Cutter
  module Knife
    class Server < Sinatra::Base

      include ERB::Util

      set :root, "#{File.dirname(__FILE__)}/../../../"

      get '/' do
        erb :index
      end

      post '/parse' do
        @path = params[:path]
        @html = params[:html]
        @content = Nokogiri::HTML(@html).search(@path).map{ |m| m.content }
        puts @content
        erb :index
      end

    end
  end
end
