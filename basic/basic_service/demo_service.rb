require 'bundler'
Bundler.require

class DemoService
  include Ezap::Service::Base

  class Dispatcher < CoreDispatcher
    
    def date
      {reply: service.date}
    end

    #def build_model
    #  {reply: service.model_creation_reply(Model)}
    #  #{reply: service.model_creation_reply(DemoService::Model)}
    #end

  end

  def date
    DateTime.now.to_s
  end

end
