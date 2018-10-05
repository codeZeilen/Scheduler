as yet unclassified
testRunSeveralTasks

	| task1 task2 now |
	now := DateAndTime now.
	
	scheduler do: [task1 := 'task 1'] at: (now + 1 second).
	scheduler do: [task2 := 'task 2'] at: (now + 1 second).
	
	1.1 seconds asDelay wait.

	self should: [task1 = 'task 1'].
	self should: [task2 = 'task 2'].