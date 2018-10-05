executing
wasRun

	self scheduleHasOnlyZeroDuration ifTrue: [self delete].
	
	self setNextRunTime