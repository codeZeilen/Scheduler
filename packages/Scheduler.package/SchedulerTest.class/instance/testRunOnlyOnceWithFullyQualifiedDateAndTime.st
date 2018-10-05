as yet unclassified
testRunOnlyOnceWithFullyQualifiedDateAndTime

	| runCount |
	runCount := 0.
	scheduler doOnce: [runCount := runCount + 1] at: (DateAndTime now + 1 seconds).
	
	1.1 seconds asDelay wait.
	
	self should: [runCount = 1].
	self should: [scheduler taskCount = 0]