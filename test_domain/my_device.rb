class MyDevice

  def initialize(mote_client)
    @mote_client = mote_client
  end

  def facing_north?
    heading_hash = @mote_client.execute({:'Magnetometer.Heading' => {}})
    angle = heading_hash['Angle'].to_f
    puts "got angle #{angle}"
    angle < 20.0 || angle > 340.0
  end


end