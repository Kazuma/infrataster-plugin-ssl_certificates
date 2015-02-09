require 'rspec'
require 'infrataster/resources'

module Infrataster
  module Helpers
    module ResourceHelper
      def domain(*args)
        Resources::SslCertificatesResource.new(*args)
      end
    end
  end
end
