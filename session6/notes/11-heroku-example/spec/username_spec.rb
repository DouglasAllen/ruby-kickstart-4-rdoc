class Session06Notes
=begin
===

  require File.dirname(__FILE__) + '/../main'
  require 'rack/test'

  set :environment, :test

  @TheHelloWorldApp =<<preamble
  The HelloWorld App
  You can make notes in here if you like
  preamble
  describe @TheHelloWorldApp do
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    context 'get "/Cheek/Joshua"' do
      before { get '/Cheek/Joshua' }
      specify { last_response.should be_ok }
      specify { last_response.body.should include "Joshua Cheek's username is jcheek" }
    end
    
    context 'get "/Cheek/Joshua/Jay"' do
      before { get '/Cheek/Joshua/Jay' }
      specify { last_response.should be_ok }
      specify { last_response.body.should include "Joshua Jay Cheek's username is jjcheek" }    
    end
    
    context 'get "/Matsumoto/Yukihiro"' do
      before { get '/Matsumoto/Yukihiro' }
      specify { last_response.should be_ok }
      specify { last_response.body.should include "Yukihiro Matsumoto's username is ymatsu" }
    end
    
  end
=end
def session6_username_spec;end
end

require File.dirname(__FILE__) + '/../main'
require 'rack/test'

set :environment, :test

@TheHelloWorldApp =<<preamble
The HelloWorld App
preamble
describe @TheHelloWorldApp do
  include Rack::Test::Methods
=begin
===
  # see Session06Notes#username_spec
=end
  def app
    Sinatra::Application
  end

  context 'get "/Cheek/Joshua"' do
    before { get '/Cheek/Joshua' }
    specify { last_response.should be_ok }
    specify { last_response.body.should include "Joshua Cheek's username is jcheek" }
  end
  
  context 'get "/Cheek/Joshua/Jay"' do
    before { get '/Cheek/Joshua/Jay' }
    specify { last_response.should be_ok }
    specify { last_response.body.should include "Joshua Jay Cheek's username is jjcheek" }    
  end
  
  context 'get "/Matsumoto/Yukihiro"' do
    before { get '/Matsumoto/Yukihiro' }
    specify { last_response.should be_ok }
    specify { last_response.body.should include "Yukihiro Matsumoto's username is ymatsu" }
  end
  
end

