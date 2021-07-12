# frozen_string_literal: true

require_relative "ipgeobase/version"
require "net/http"
require "addressable/uri"
require "happymapper"

module Ipgeobase
  class Error < StandardError; end
  # Your code goes here...
  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}?fields=24787")
    res = Net::HTTP.get_response(uri)
    HappyMapper.parse(res.body) if res.is_a?(Net::HTTPSuccess)
  end
end