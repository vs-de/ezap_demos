require 'bundler'
Bundler.require

GM = Ezap::Service::GlobalMaster


class DemoService
  include Ezap::ServiceAdapter
  def date
    service_request :date
  end
end
