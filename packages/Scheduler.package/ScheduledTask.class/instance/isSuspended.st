accessing
isSuspended

	workerProcess ifNil: [^ false].
	
	^ workerProcess isTerminated not and: [workerProcess isSuspended]