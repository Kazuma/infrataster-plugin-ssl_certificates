require 'infrataster'
require 'net/https'

module Infrataster
  module Contexts
    class SslCertificatesContext < BaseContext
      def certificate
        options = { port: 443 }

        if server.options[:ssl]
          options = options.merge(server.options[:ssl])
        end

        https = Net::HTTP.new(resource.domain, options[:port])
        https.use_ssl = true
        https.verify_mode = OpenSSL::SSL::VERIFY_PEER
        https.start do
          https.peer_cert
        end
      end
    end
  end
end
