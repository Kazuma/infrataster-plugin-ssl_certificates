require 'infrataster'

module Infrataster
  module Resources
    class SslCertificatesResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :url

      def initialize(url)
        @url = URI.parse(url)
      end

      def to_s
        "SSL Certification: #{@url}"
      end
    end
  end
end
