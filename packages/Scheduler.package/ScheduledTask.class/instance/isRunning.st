accessing
isRunning

	workerProcess ifNil: [^ false].
	
	^ workerProcess isTerminated not