#!/usr/bin/python
import paramiko
REMOTE_USERNAME='tester'
REMOTE_PASSWORD='tester'
REMOTE_HOST= '127.0.0.1'
serwer=paramiko.SSHClient()
type(serwer)
serwer.set_missing_host_key_policy(paramiko.AutoAddPolicy())
serwer.connect(REMOTE_HOST, username=REMOTE_USERNAME,password= REMOTE_PASSWORD)
a,b,c=serwer.exec_command('cat /etc/passwd')
#print b.read()
wynik=b.read()

#if 'MyOwnUser' in wynik:
#    print 'Jest ok'
#else:
#    print 'Nie jest ok'

if "tester" in wynik:
    print "Jest dobrze"
else:
    print "Nie jest dobrze"
