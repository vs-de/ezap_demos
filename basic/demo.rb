require 'bundler'
Bundler.require

class DemoService
  include Ezap::ServiceAdapter

  def date
    service_request :date
  end

end
