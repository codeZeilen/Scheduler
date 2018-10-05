as yet unclassified
testRunUsingCustomSchedule

	| runCount schedule |
	runCount := 0.
	
	schedule := Schedule starting: DateAndTime now duration: 1 minute.
	schedule schedule: {1 second. 2 seconds. 20 seconds}.
	
	scheduler do: [runCount := runCount + 1] following: schedule.
	3.1 seconds asDelay wait.
	
	self should: [runCount = 2].
	self should: [scheduler taskCount = 1]
