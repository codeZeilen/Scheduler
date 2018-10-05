tests
testRunAtSomeTimeInTheFuture

	| task timeToRun |
	timeToRun := DateAndTime now + 2 second.
	task := scheduler do: [] at: timeToRun every: 1 hour.
	
	2.1 seconds wait.
	
	self assert: timeToRun + 1 hour equals: task nextRunTime.
	self assert: 1 hour equals: task schedule schedule first.
	self assert: 1 equals: scheduler taskCount.
	
	
