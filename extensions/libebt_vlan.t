:INPUT,FORWARD,OUTPUT
-p 802_1Q --vlan-id 42;=;OK
-p 802_1Q --vlan-prio ! 1;=;OK
-p 802_1Q --vlan-encap ip;-p 802_1Q --vlan-encap 0800 -j CONTINUE;OK
-p 802_1Q --vlan-encap IPv6 ! --vlan-id 1;-p 802_1Q --vlan-id ! 1 --vlan-encap 86DD -j CONTINUE;OK