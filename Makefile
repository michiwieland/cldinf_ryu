#.PHONY: all start stop attach excercise1 excercise2 excercise3

all: start excercise1 excercise2 excercise3 stop

MN=docker exec --interactive --tty mininet
RYU=docker exec --interactive --tty ryu
RYUC=$(RYU) /root/lab/controller

start:
	@docker-compose build
	@docker-compose create
	@docker-compose start

stop:
	@docker-compose stop

excercise1:
	@$(RYUC) start ryu/app/simple_switch.py
	@$(MN) mn --topo single,3 --mac --controller remote,ip=$$($(MN) dig +short ryu)
	@$(MN) mn -c
	@$(RYUC) stop

excercise2:
	@$(RYUC) start ryu/app/hub.py
	@$(MN) /root/lab/networks/excercise2.py
	@$(MN) mn -c
	@$(RYUC) stop

excercise3:
	@$(RYUC) start ryu/app/hub.py
	@$(MN) /root/lab/networks/excercise3.py
	@$(MN) mn -c
	@$(RYUC) stop

attach-mininet:
	@$(MN) /bin/bash

attach-ryu:
	@$(RYU) /bin/bash
