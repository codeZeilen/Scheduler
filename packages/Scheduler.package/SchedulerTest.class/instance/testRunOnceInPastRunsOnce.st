tests
testRunOnceInPastRunsOnce

	| message |
	scheduler doOnce: [message := 'task ran'] at: (DateAndTime now - 1 second).
	
	1 second wait.
	
	self assert: 'task ran' equals: message.
	self assert: 0 equals: scheduler taskCount.