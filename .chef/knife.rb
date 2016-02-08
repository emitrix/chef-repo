# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "emitrix"
client_key               "#{current_dir}/emitrix.pem"
validation_client_name   "emitrix-validator"
validation_key           "#{current_dir}/emitrix-validator.pem"
chef_server_url          "https://api.chef.io/organizations/emitrix"
cookbook_path            ["#{current_dir}/../cookbooks"]
