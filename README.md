Tech used
---------
Cerebro based on https://github.com/lmenezes/cerebro (actually 0.7.2)

How?
----
You can add as many hosts (or FQDNs) as you want after image name as Shell argument values, like this :

docker run -d --net host --restart always -P elasticsearch5-tools:latest HOST1 HOST2 HOST3...

If you don't want to give hosts, localhost will be used by default.

Command to run
--------------
```
docker run -d --net host --restart always -P elasticsearch5-tools:latest
```
or
```
docker run -d --net host --restart always -P elasticsearch5-tools:latest HOST1 HOST2...
```
 

Reminder
--------
Just remember, port 9200 is by default used for all the hosts to bind elasticsearch.

