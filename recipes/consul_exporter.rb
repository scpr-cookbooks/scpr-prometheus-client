include_recipe "scpr-consul"

# -- Set up the node-exporter -- #

prometheus_client_consul node.name do
  action      :install
  server      "localhost:8500"
end

scpr_consul_web_service "prometheus-consul-exporter" do
  action      :create
  port        node.prometheus_client.consul_exporter.port
  match       "process_goroutines"
  name_suffix false
  tags        nil
end
