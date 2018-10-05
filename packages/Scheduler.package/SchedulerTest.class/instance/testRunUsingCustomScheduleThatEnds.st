as yet unclassified
testRunUsingCustomScheduleThatEnds

	| runCount schedule |
	runCount := 0.
	
	schedule := Schedule starting: (DateAndTime now + 1 second) duration: 4 seconds.
	schedule schedule: {1 second. 2 seconds}.
	
	scheduler do: [runCount := runCount + 1] following: schedule.
	5.1 seconds asDelay wait.
	
	self should: [runCount = 3].
	self should: [scheduler taskCount = 0]
