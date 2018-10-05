tests
testRunOnlyOnceWithFullyQualifiedDateAndTime

	| runCount |
	runCount := 0.
	scheduler doOnce: [runCount := runCount + 1] at: (DateAndTime now + 1 seconds).
	
	1.1 seconds wait.
	
	self assert: 1 equals: runCount..
	self assert: 0 equals: scheduler taskCount.