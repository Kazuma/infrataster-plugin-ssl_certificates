require 'infrataster'
require 'net/https'

module Infrataster
  module Contexts
    class SslCertificatesContext < BaseContext
      def certificate
        https = Net::HTTP.new(resource.url.host, resource.url.port)
        https.use_ssl = true
        https.verify_mode = OpenSSL::SSL::VERIFY_PEER
        https.start do
          https.peer_cert
        end
      end
    end
  end
end
