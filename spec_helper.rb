require 'rspec'
Dir.glob("#{File.dirname(__FILE__)}/test_domain/*.rb").each do |file|
  require file
end
