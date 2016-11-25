# CldInf Prak Ryu

# Installation
1. [Download VM](sourceforge.net/projects/ryu/files/vmimages/OpenFlowTutorial/)
2. Username: ryu / Password: ryu
3. ssh ryu@[your vm]

## Prerequisites
1. `sudo apt-get update`
2. `time sudo apt-get install python-eventlet python-routes python-webob python-paramiko`

## Mininet
1. `sudo mn -c`
2. `sudo mn --topo single, 3 --mac --switch ovsk --controller remote`

## Ryu
1. git clone https://github.com/michiwieland/cldinf_ryu.git
2. `PYTHONPATH=. ./bin/ryu-manager --verbose ryu/app/simple_switch.py`

# Basics
- [First Application](https://ryu.readthedocs.io/en/latest/writing_ryu_app.html)
- [Packet library](https://ryu.readthedocs.io/en/latest/library_packet.html)

# Python
- [Python Doc](https://docs.python.org/3/tutorial/)
- `$ pydoc dict`
