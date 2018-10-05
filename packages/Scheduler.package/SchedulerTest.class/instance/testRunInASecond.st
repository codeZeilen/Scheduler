tests
testRunInASecond

	| ranWhen now |
	now := DateAndTime now.
	
	scheduler do: [ranWhen := DateAndTime now] at: (now + 1 seconds).
	
	1.2 seconds wait.

	self assert: (now + 1 seconds) floor equals: ranWhen floor