.PHONY: all start stop attach excercise1 excercise2 excercise3

all: start excercise1 excercise2 excercise3 stop

start:
	docker-compose build
	docker-compose start

stop:
	docker-compose stop

excercise1:
	@docker exec --interactive --tty mini_net /root/mininet/excercise1.py

excercise2:
	@docker exec --interactive --tty mini_net /root/mininet/excercise2.py

excercise3:
	@docker exec --interactive --tty mini_net /root/mininet/excercise3.py

attach:
	@docker exec --interactive --tty mini_net /bin/bash
