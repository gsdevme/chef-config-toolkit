if node['hosts']
    node['hosts'].each do |name, value|
        value.each do |host|
            hostsfile_entry name do
              hostname  host
              comment   'Added by Chef'
              action    :create
            end
        end
    end
end
