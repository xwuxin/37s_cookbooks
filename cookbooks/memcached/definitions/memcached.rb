define :memcached_instance, :enable => true, :max_memory => node[:memcached][:max_memory],
                            :port => node[:memcached][:port], :user => node[:memcached][:user],
                            :max_connections => node[:memcached][:port]  do
  
  runit_service "memcached-#{params[:name]}" do
    template_name "memcached"
    options params
  end
  
  service params[:name] do
    action params[:enable] ? [:enable, :start] : [:disable, :stop]
  end
  
end
