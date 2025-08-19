class SensorReading
  def self.create(temperature:, humidity:)
    point = InfluxDB2::Point.new(name: "environment")
                           .add_field("temperature", temperature)
                           .add_field("humidity", humidity)
                           .time(Time.now, InfluxDB2::WritePrecision::NANOSECOND)

    INFLUXDB_CLIENT.create_write_api.write(data: point)
  end
end
