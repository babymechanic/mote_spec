require "#{File.dirname(__FILE__)}/spec_helper"

describe 'My Device' do

  it 'should be facing north' do

    my_device = MyDevice.new(MoteClient.new('127.0.0.1', 8081))

    my_device.facing_north?.should == true

  end

end