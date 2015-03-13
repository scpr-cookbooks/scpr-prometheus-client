include_recipe "scpr-consul"

# -- Set up the node-exporter -- #

prometheus_client_haproxy node.name do
  action      :install
  scrape_uri  "http://#{node.ipaddress}:1944;csv"
end

scpr_consul_web_service "prometheus-haproxy-exporter" do
  action      :create
  port        node.prometheus_client.haproxy_exporter.port
  match       "process_goroutines"
  name_suffix false
  tags        nil
end
