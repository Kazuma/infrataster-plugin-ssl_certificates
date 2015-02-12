require 'infrataster'

module Infrataster
  module Resources
    class SslCertificatesResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :domain, :options

      def initialize(domain, options = {})
        @domain = domain
        @options = options
      end

      def to_s
        "SSL Certification: #{@domain}"
      end
    end
  end
end
