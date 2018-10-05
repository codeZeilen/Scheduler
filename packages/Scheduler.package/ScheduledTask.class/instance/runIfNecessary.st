executing
runIfNecessary

	((DateAndTime now >= self nextRunTime) and: [self isRunning not]) ifTrue: [self run]