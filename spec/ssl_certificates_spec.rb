require 'spec_helper'

describe server(:web) do
  describe domain('example.com') do
    it { expect(certificate.not_after.to_s).to eq('2015-11-13 12:00:00 UTC') }
  end
end
