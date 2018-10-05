as yet unclassified
testRunDailyTask

	| message when task |

	when := (DateAndTime now + 1 second) asTime.
	
	task := scheduler do: [message := 'task ran'] at: when.
	
	1.1 seconds asDelay wait.

	self should: [message = 'task ran'].
	self should: [scheduler taskCount = 1].
	self should: [task nextRunTime = (DateAndTime date: (Date today addDays: 1) time: when)]