include_recipe "scpr-consul"

# -- Set up the node-exporter -- #

prometheus_client_node node.name do
  action :install
end

scpr_consul_web_service "prometheus-node-exporter" do
  action      :create
  port        node.prometheus_client.node_exporter.port
  match       "process_goroutines"
  name_suffix false
  tags        nil
end
