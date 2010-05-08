# setup bundler
begin
  # Require the preresolved locked set of gems.
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  # Fallback on doing the resolve at runtime.
  require "rubygems"
  require "bundler"
  Bundler.setup
end
Bundler.require

configatron.configure_from_yaml(File.expand_path("../config/config.yml", __FILE__))
