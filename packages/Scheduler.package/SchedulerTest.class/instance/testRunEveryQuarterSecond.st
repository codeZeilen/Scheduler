tests
testRunEveryQuarterSecond

	| runCount |
	runCount := 0.

	scheduler do: [runCount := runCount + 1] every: 250 milliSeconds.
	
	900 milliSeconds asDelay wait.
	
	self assert: 3 equals: runCount.
	self assert: 1 equals: scheduler taskCount.