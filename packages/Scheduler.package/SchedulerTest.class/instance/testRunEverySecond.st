as yet unclassified
testRunEverySecond

	| runCount |
	runCount := 0.

	scheduler do: [runCount := runCount + 1] every: 1 second.
	
	3.1 seconds asDelay wait.
	
	self should: [runCount = 3].
	self should: [scheduler taskCount = 1]