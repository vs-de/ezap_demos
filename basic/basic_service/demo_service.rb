require 'bundler'
Bundler.require

class DemoService
  include Ezap::Service::Immediate

  def date
    DateTime.now.to_s
  end

  def add n
    n+1+rand(10)
  end

end
