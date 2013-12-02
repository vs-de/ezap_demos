require 'bundler'
Bundler.require

class DemoService
  include Ezap::Service::Immediate

  def date
    DateTime.now.to_s
  end

end
