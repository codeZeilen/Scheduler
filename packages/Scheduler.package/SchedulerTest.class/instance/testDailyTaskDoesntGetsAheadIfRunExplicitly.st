as yet unclassified
testDailyTaskDoesntGetsAheadIfRunExplicitly

	| task |

	task := scheduler do: ['task ran'] at: DateAndTime now + 10 seconds.
	
	self should: [task nextRunTime asDate = Date today].
	
	task run. "run explicitly before scheduled time"
	
	self should: [task nextRunTime asDate = Date today].