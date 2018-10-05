tests
testRunUsingCustomScheduleThatEnds

	<timeout: 10>

	| runCount schedule |
	runCount := 0.
	
	schedule := Schedule starting: (DateAndTime now + 1 second) duration: 4 seconds.
	schedule schedule: {1 second. 2 seconds}.
	
	scheduler do: [runCount := runCount + 1] following: schedule.
	5.1 seconds wait.
	
	self assert: 3 equals: runCount.
	self assert: 0 equals: scheduler taskCount.
