# Licensed by AT&T under 'Software Development Kit Tools Agreement.' 2013 TERMS
# AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION:
# http://developer.att.com/sdk_agreement/ Copyright 2013 AT&T Intellectual
# Property. All rights reserved. http://developer.att.com For more information
# contact developer.support@att.com

require 'restclient'

module Att
  module Codekit

    # Static class for defining how to perform the transport layer
    class Transport

      class << self
        # Send a post request with standard headers
        #
        # @param url [String] The url to send the request to
        # @param payload [String] The body of the post request
        # @param headers [Hash] A hash of headers that override/extend the 
        # defaults
        def post(url, payload, headers={})
          RestClient.post url, payload, headers
        end

        # Send a get request with standard headers
        #
        # @param url [String] The url to send the request to
        # @param headers [Hash] A hash of headers that override/extend the defaults
        def get(url, headers={})
          RestClient.get url, headers
        end

        # Send a Http put request with standard headers
        #
        # @param url [String] The url to send the request to
        # @param payload [String] The data to send to the url
        # @param headers [Hash] A hash of headers that override/extend the 
        # defaults
        def put(url, payload, headers={})
          RestClient.put url, payload, headers
        end

      end
    end
  end
end
