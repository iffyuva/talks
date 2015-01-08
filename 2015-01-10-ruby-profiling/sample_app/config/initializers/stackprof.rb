# for custom middleware which fixes a bug in stackprof gem
Rails.application.config.middleware
  .use(StackprofMiddleware,
       mode: :cpu,
       raw: true,
       interval: 1000)
