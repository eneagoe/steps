if Rails.env.development?
  require 'rack-mini-profiler'

  Rack::MiniProfiler.config.storage = Rack::MiniProfiler::MemoryStore
  Rack::MiniProfiler.config.position = 'top-left'

  # initialization is skipped so trigger it
  Rack::MiniProfilerRails.initialize!(Rails.application)
end
