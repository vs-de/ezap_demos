require 'bundler'
Bundler.require

class DemoService
  include Ezap::Service::Base

  class Dispatcher < CoreDispatcher
    
    def date
      {reply: service.date}
    end

  end

  def date
    DateTime.now.to_s
  end

end
