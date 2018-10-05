executing
suspend

	self isRunning ifTrue: [workerProcess suspend]

	