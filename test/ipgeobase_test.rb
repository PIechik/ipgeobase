# frozen_string_literal: true

require "test_helper"

class IpgeobaseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_lookup
    stub_request(:get, "http://ip-api.com/xml/24.48.0.1?fields=24787").to_return(body: File.new('./test/response_file.xml'))
    ip_meta = Ipgeobase.lookup('24.48.0.1')
    assert_equal ip_meta.city, 'Montreal'
    assert_equal ip_meta.country, 'Canada'
    assert_equal ip_meta.country_code, 'CA'
    assert_equal ip_meta.lat, '45.6085'
    assert_equal ip_meta.lon, '-73.5493'
  end
end
