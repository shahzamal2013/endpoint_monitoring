require 'influxdb-client'

INFLUXDB_CLIENT = InfluxDB2::Client.new(
  "http://localhost:8086",
  "RbMlJ_Jv-dUTkLMQ2HWH4HRw6aZjplXC0j6wj3vQugGZYHJUalDZnqUlPh7tlJxf_9UAVTdETstlGuOncpD03Q==",
  bucket: "pronto_bucket",
  org: "0000213ba678c6d1",
  # org: "pronto",
  precision: InfluxDB2::WritePrecision::NANOSECOND,
  use_ssl: false,
  verify_ssl: false
)