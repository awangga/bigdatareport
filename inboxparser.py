#!/usr/bin/env python
"""
inboxparser.py - daemon for peuyeum and sms web :
1. open service on smsweb 
2. open parser on peuyeum controller
3. daemonize
"""
import urllib2
from daemon import Daemon
from time import sleep

class peuyeum(Daemon):
	def run(self):
		while True:
			response = urllib2.urlopen('http://simpon.ddns.net/s.py')
			#print response.read()
			response = urllib2.urlopen('http://localhost/parser')
			#print response.read()
			sleep(5)
		
py = peuyeum('peuyeum.pid')
#py.run()