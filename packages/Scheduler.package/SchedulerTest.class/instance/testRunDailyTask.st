tests
testRunDailyTask

	| message when task |

	when := DateAndTime now + 1 second.
	
	task := scheduler do: [message := 'task ran'] at: when.
	
	1.1 seconds wait.

	self assert: 'task ran' equals: message.
	self assert: 1 equals: scheduler taskCount.
	self assert: (when + 1 days) floor equals: task nextRunTime floor.