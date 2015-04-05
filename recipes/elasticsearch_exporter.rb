include_recipe "scpr-consul"

# -- Set up the node-exporter -- #

prometheus_client_elasticsearch node.name do
  action      :install
  server      "http://localhost:9200"
end

scpr_consul_web_service "prometheus-elasticsearch-exporter" do
  action      :create
  port        node.prometheus_client.elasticsearch_exporter.port
  match       "process_goroutines"
  name_suffix false
  tags        nil
end
