as yet unclassified
testRunEveryOtherHourOnTheHour

	| currentTime task |
	scheduler stop.
	currentTime := DateAndTime now asTime.
	
	task := scheduler do: [] at: currentTime hour asString every: 2 hours.
	task run.
		
	self should: [task nextRunTime asTime hour = ((currentTime addSeconds: 2 * 60 * 60) hour)].

	self should: [task nextRunTime > DateAndTime now]