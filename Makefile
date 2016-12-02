.PHONY: all

all:
	docker run -ti -p 6633:6633 -v $(shell pwd):/opt/ryu/ryu/app/my hsrnetwork/ryu bash
