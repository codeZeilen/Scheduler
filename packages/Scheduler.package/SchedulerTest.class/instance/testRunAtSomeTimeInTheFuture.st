as yet unclassified
testRunAtSomeTimeInTheFuture

	| task timeToRun |
	timeToRun := DateAndTime now + 2 second.
	task := scheduler do: [] at: timeToRun every: 1 hour.
	
	2.1 seconds asDelay wait.
	
	self should: [task nextRunTime = (timeToRun + 1 hour)].
	self should: [task schedule schedule first = 1 hour].
	self should: [scheduler taskCount = 1]
	
	
