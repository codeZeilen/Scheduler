tests
testDailyTaskDoesntGetsAheadIfRunExplicitly

	| task |

	task := scheduler do: ['task ran'] at: DateAndTime now + 10 seconds.
	
	self assert: Date today equals: task nextRunTime asDate.
	
	task run. "run explicitly before scheduled time"
	
	self assert: Date today equals: task nextRunTime asDate.