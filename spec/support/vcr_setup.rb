require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.filter_sensitive_data('<MOIP_KEY>') { ENV['MOIP_KEY'] }
  c.filter_sensitive_data('<MOIP_TOKEN>') { ENV['MOIP_TOKEN'] }
end