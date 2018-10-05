as yet unclassified
testNewTaskScheduledToRunEarlierInDayGetsRescheduledLaterInDay

	| message when task |

	when := (DateAndTime now - 1 minute) asTime.
	
	task := scheduler do: [message := 'task ran'] at: when.
	
	1.1 seconds asDelay wait.

	self should: [message isNil].
	self should: [scheduler taskCount = 1].
	self should: [task nextRunTime = (DateAndTime date: (Date today addDays: 1) time: when)]