scheduling
addTask: aScheduledTask

	^ accessProtect critical: [tasks add: aScheduledTask]