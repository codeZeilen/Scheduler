tests
testRunEveryOtherHourOnTheHour

	<timeout: 10>

	| currentTime task |
	scheduler stop.
	currentTime := DateAndTime now.
	
	task := scheduler do: [] at: currentTime hour asString every: 2 hours.
	task run.
	
	self assert: (currentTime + 2 hours) hour equals: task nextRunTime hours.
