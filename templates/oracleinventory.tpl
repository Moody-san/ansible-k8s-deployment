%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_master || server_info.is_oracle_extramaster || server_info.is_oracle_worker ~}
${server_info.all_details} ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args="-o ProxyJump=ubuntu@${ocibastionpubip[0]} -o ServerAliveInterval=30 -o ServerAliveCountMax=10" 
%{ endif ~}
%{ endfor ~} 

[master]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_master ~}
${server_info.name}
%{ endif ~}
%{ endfor ~} 

[joinasworker]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_worker ~}
${server_info.name}
%{ endif ~}
%{ endfor ~} 

[joinasmaster]
%{ for server_info in ociservers ~}
%{ if server_info.is_oracle_extramaster ~}
${server_info.name}
%{ endif ~}
%{ endfor ~} 

