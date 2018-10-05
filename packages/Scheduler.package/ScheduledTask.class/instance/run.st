executing
run

	workerProcess := [[task value] ensure: [self logRun]] fork.

	self wasRun