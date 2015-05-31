[{
	'name': 'consume 1->1 armv61', 
	'type': 'simple', 
	'params': [{
		'time-limit': 30, 
		'producer-count': 1, 
		'consumer-count': 1 
	}],
	'uri': 'amqp://mq:mq@rpi01'
},

{
	'name': 'consume 1->2 armv61', 
	'type': 'simple', 
	'params': [{
		'time-limit': 30, 
		'producer-count': 1, 
		'consumer-count': 2 
	}],
	'uri': 'amqp://mq:mq@rpi01'
}]

