as yet unclassified
testRunDailyTaskNeverGetsBehind

	| task |

	scheduler stop.
	task := scheduler do: ['task ran'] at: DateAndTime now.
	
	task startDateAndTime: (task nextRunTime - 2 days) duration: 1 day.
	scheduler start.
	1 second asDelay wait.
	
	self should: [task nextRunTime asDate = Date tomorrow].
	
	task startDateAndTime: ((DateAndTime now + 180 seconds) - 1 day) duration: 1 day.
	1 second asDelay wait.
	
	self should: [task nextRunTime asDate = Date today]