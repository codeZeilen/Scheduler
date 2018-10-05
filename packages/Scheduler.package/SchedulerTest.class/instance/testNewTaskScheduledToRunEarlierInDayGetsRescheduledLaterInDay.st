tests
testNewTaskScheduledToRunEarlierInDayGetsRescheduledLaterInDay

	| message when task |

	when := DateAndTime now - 1 minute.
	
	task := scheduler do: [message := 'task ran'] at: when.
	
	1.1 seconds wait.

	self assert: message isNil.
	self assert: 1 equals: scheduler taskCount.
	self assert: (when + 1 days) floor equals: task nextRunTime floor