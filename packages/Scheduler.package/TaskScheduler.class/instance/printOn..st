printing
printOn: aStream

	aStream
		nextPutAll: 'Task scheduler is ', (running ifTrue: ['running'] ifFalse: ['stopped']);
		nextPutAll: ' with ', self taskCount asWords, ' tasks'