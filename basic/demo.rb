require 'bundler'
Bundler.require

class DemoService
  include Ezap::ServiceAdapter

  def date
    service_request :date
  end

  def add n
    service_request :add, n
  end

end
