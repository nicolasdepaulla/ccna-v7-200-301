PRIMEIRA ETAPA:Configuração Base Switch Layer 2 2960
 enable 
clock set 14:00:00 30 April 2020
	configure terminal
		hostname sw-l2-2960-3
		service password-encryption
		service timestamps log datetime msec
		no ip domain-lookup
		banner motd #AVISO: acesso autorizado somente a funcionarios#
		enable secret vaamonde@pti
		username robson secret vaamonde@pti
		username vaamonde password vaamonde@pti
		username admin privilege 15 secret vaamonde@pti
		ip default-gateway 192.168.3.254
		ip domain-name vaamonde.pti
		crypto key generate rsa general-keys modulus 1024
		ip ssh version 2
		ip ssh time-out 60
		ip ssh authentication-retries 2
		line console 0
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			exit	
		line vty 0 4
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			transport input ssh
			exit
            interface vlan 1
			description Interface de Gerenciamento do Switch SW-L2-2960-3
			ip address 192.168.3.250 255.255.255.0
			no shutdown
			end
            write
-----------------------------------------------------------------------            
SEGUNDA ETAPA:Configuração Base Switch Layer 2 2960
enable
clock set 14:00:00 30 April 2020
	configure terminal
		hostname sw-l2-2960-4
		service password-encryption
		service timestamps log datetime msec
		no ip domain-lookup
		banner motd #AVISO: acesso autorizado somente a funcionarios#
		enable secret vaamonde@pti
		username robson secret vaamonde@pti
		username vaamonde password vaamonde@pti
		username admin privilege 15 secret vaamonde@pti
		ip default-gateway 192.168.3.254
		ip domain-name vaamonde.pti
		crypto key generate rsa general-keys modulus 1024
		ip ssh version 2
		ip ssh time-out 60
		ip ssh authentication-retries 2
		line console 0
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			exit	
		line vty 0 4
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			transport input ssh
			exit
		interface vlan 1
			description Interface de Gerenciamento do Switch SW-L2-2960-4
			ip address 192.168.3.251 255.255.255.0
			no shutdown
			end
write
--------------------------------------------------------------------------
TERCEIRA ETAPA: Configuração Base Switch Layer 3 3560
enable
clock set 14:00:00 30 April 2020
	configure terminal
		hostname sw-l3-3560-1
		service password-encryption
		service timestamps log datetime msec
		service timestamps debug datetime msec
		no ip domain-lookup
		banner motd #AVISO: acesso autorizado somente a funcionarios#
		enable secret vaamonde@pti
		username robson secret vaamonde@pti
		username vaamonde password vaamonde@pti
		username admin privilege 15 secret vaamonde@pti
		ip domain-name vaamonde.pti
		crypto key generate rsa general-keys modulus 1024
		ip ssh version 2
		ip ssh time-out 60
		ip ssh authentication-retries 2
		login block-for 120 attempts 2 within 60
		line console 0
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			exit	
		line vty 0 4
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			transport input ssh
			exit
		interface vlan 1
			description Interface de Gerenciamento do Switch SW-L3-3560-1
			ip address 192.168.3.252 255.255.255.0
			no shutdown
			end
write
---------------------------------------------------------------------------
QUARTA ETAPA: Configuração Base Router 1941
enable
clock set 14:00:00 30 April 2020
	configure terminal
		hostname rt-1941-2
		service password-encryption
		service timestamps log datetime msec
		service timestamps debug datetime msec
		no ip domain-lookup
		banner motd #AVISO: acesso autorizado somente a funcionarios#
		security passwords min-length 8
		enable secret vaamonde@pti
		username robson secret vaamonde@pti
		username vaamonde password vaamonde@pti
		username admin privilege 15 secret vaamonde@pti
		ip domain-name vaamonde.pti
		crypto key generate rsa general-keys modulus 1024
		ip ssh version 2
		ip ssh time-out 60
		ip ssh authentication-retries 2
		login block-for 120 attempts 2 within 60
		line console 0
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			exit
		line aux 0
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			speed 115200
			flowcontrol hardware
			exit
		line vty 0 4
			login local
			password vaamonde@pti
			logging synchronous
			exec-timeout 5 30
			transport input ssh
			end
write