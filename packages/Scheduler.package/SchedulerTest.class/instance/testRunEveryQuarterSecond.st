as yet unclassified
testRunEveryQuarterSecond

	| runCount |
	runCount := 0.

	scheduler do: [runCount := runCount + 1] every: 250 milliSeconds.
	
	900 milliSeconds asDelay wait.
	
	self should: [runCount = 3].
	self should: [scheduler taskCount = 1]