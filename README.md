# Ezap

This repository has some example code for Ezap non-cloud distributed service-system

##Demos

### 1. Basic Demo

This very basic demo consists of a class including Ezap::Adapter that can be one of
any usual class and a class including Ezap::Service that actually runs the demanded 
task (remotely).

####Adapter

an adapter-class looks simple like this:

```ruby
class DemoService
  include Ezap::ServiceAdapter

  def heavy_func #omg hard work todo, let's put it into a remote-service!
    service_request :heavy_func
  end
end
```

####Service

a basic service responding to the heavy function looks like this:
```ruby
class DemoService
  include Ezap::Service::Base

  class Dispatcher < CoreDispatcher

    # 'service' holds the actual service object
    def heavy_func
      {reply: service.date}
    end

  end

  def heavy_func
    #exhausing work...
  end

end
```
####so what?

You want to try it out and play? Great!

1. Fetch this repos first:

    $ git clone https://github.com/vs-de/ezap_demos
    
2. go inside

    $ cd ezap_demos/basic/
    
3. bundle

    $ bundle
    
4. According to the doc on the [core gem](https://github.com/vs-de/ezap_core) we start the global master

    $ bundle exec ezap start
    
5. run the service(maybe inside screen/tmux, 2nd terminal, whatever fits your taste)

    $ cd basic_service/
    $ bundle
    $ echo DemoService.new.start | ruby -r ./demo.rb

6. this blocks now and waits for requests, let's do some(in ezap_demos/basic again):
    $ irb -r ./demo.rb
    irb(main):001:0> ds = DemoService.new
    ...
    irb(main):002:0> ds.date
    => "2014-01-01T02:02:11+1:00"

if u get a date -> all is fine.
If not -> u can write me a line. ;)
As noted somewhere before, this stuff is wip, stay tuned...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
