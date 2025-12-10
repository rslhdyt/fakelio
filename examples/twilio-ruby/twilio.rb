require 'twilio-ruby'
require 'pry'

# monkey patch to use fakelio.rslhdyt.dev as the base url
module Twilio
  module REST
    class TrusthubBase < Domain
      ##
      # Initialize trusthub domain
      #
      # @param twilio - The twilio client
      #
      def initialize(twilio)
        super(twilio)
        @base_url = "https://fakelio.rslhdyt.dev"
        @host = "fakelio.rslhdyt.dev"
        @port = 443
        @v1 = nil
      end

      def v1
        @v1 ||= Trusthub::V1.new self
      end

      ##
      # Provide a user friendly representation
      def to_s
        '<Twilio::REST::Trusthub::V1>';
      end
    end
  end
end

client = Twilio::REST::Client.new(
  "BANANA",
  "BANANA",
)

client.trusthub.v1.customer_profiles.list