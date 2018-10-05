as yet unclassified
testRunOnceInPastRunsOnce

	| message |
	scheduler doOnce: [message := 'task ran'] at: (DateAndTime now - 1 second).
	
	1 second asDelay wait.
	
	self should: [message = 'task ran'].
	self should: [scheduler taskCount = 0]