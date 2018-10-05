tests
testRunSeveralTasks

	| task1 task2 now |
	now := DateAndTime now.
	
	scheduler do: [task1 := 'task 1'] at: (now + 1 second).
	scheduler do: [task2 := 'task 2'] at: (now + 1 second).
	
	1.1 seconds wait.

	self assert: 'task 1' equals: task1.
	self assert: 'task 2' equals: task2.