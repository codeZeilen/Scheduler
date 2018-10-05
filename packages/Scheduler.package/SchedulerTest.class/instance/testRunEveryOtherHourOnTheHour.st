tests
testRunEveryOtherHourOnTheHour

	| currentTime task |
	scheduler stop.
	currentTime := DateAndTime now.
	
	task := scheduler do: [] at: currentTime hour asString every: 2 hours.
	task run.
		
	self assert: (currentTime + 2 hours asSeconds) hour equals: task nextRunTime hour.

	self assert: DateAndTime now < task nextRunTime.