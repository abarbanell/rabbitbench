[{
	'name': 'consume 1->1 armv71', 
	'type': 'simple', 
	'params': [{
		'time-limit': 30, 
		'producer-count': 1, 
		'consumer-count': 1 
	}],
	'uri': 'amqp://mq:mq@rpi03'
},

{
	'name': 'consume 1->2 armv71', 
	'type': 'simple', 
	'params': [{
		'time-limit': 30, 
		'producer-count': 1, 
		'consumer-count': 2 
	}],
	'uri': 'amqp://mq:mq@rpi03'
}]

