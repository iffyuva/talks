require 'stackprof/middleware'

class StackprofMiddleware < StackProf::Middleware
  def initialize(app, options = {})
    super(app, options)
    @raw = options[:raw] || false
  end

  def call(env)
    StackProf.start(interval: StackProf::Middleware.interval,
                    mode: StackProf::Middleware.mode,
                    raw:  @raw)
    @app.call(env)
  ensure
    StackProf.stop
    StackProf::Middleware.save
  end
end
