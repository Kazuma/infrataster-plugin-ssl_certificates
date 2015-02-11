require 'infrataster/rspec'
require 'infrataster-plugin-ssl_certificates'

Infrataster::Server.define(
  :web,
  '127.0.0.1'
)
