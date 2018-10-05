as yet unclassified
testRunInASecond

	| ranWhen now |
	now := DateAndTime now.
	
	scheduler do: [ranWhen := DateAndTime now] at: (now + 1 seconds).
	
	1.1 seconds asDelay wait.

	self should: [ranWhen = (now + 1 seconds)]