tests
testRunEverySecond

	| runCount |
	runCount := 0.

	scheduler do: [runCount := runCount + 1] every: 1 second.
	
	2.5 seconds wait.
	
	self assert: 3 equals: runCount.
	self assert: 1 equals: scheduler taskCount.