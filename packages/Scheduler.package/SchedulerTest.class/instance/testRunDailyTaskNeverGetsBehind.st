tests
testRunDailyTaskNeverGetsBehind

	| task |

	scheduler stop.
	task := scheduler do: ['task ran'] at: DateAndTime now.
	task startDateAndTime: (task nextRunTime - 2 days) duration: 1 day.
	scheduler start.
	
	1 second wait.
	self assert: DateAndTime tomorrow asDate equals: task nextRunTime asDate.
	
	task startDateAndTime: ((DateAndTime now + 3 minutes) - 1 day) duration: 1 day.
	1 second wait.
	self assert: DateAndTime today asDate equals: task nextRunTime asDate.