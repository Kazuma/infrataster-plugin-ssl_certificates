require 'spec_helper'

describe server(:web) do
  describe domain('https://example.com') do
    it { expect(certificate.not_after.to_s).to match('2015-11-13 12:00:00 UTC') }
  end
end
