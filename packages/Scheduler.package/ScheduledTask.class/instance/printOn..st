printing
printOn: aStream

	aStream nextPutAll: 'Scheduled Task'; cr.
	self description ifNotNil: [aStream nextPutAll: self description; cr].
	
	self isRunning ifTrue: [aStream nextPutAll: 'CURRENTLY RUNNING !!'].
	self isSuspended ifTrue: [aStream nextPutAll: ' (suspended)'].
	
	aStream
		cr;
		nextPutAll: 'Next Run Time : ', self nextRunTime asString;
		cr;
		nextPutAll: 'Last Run Time : ', (runHistory isEmpty 
			ifTrue: ['<never run>']
			ifFalse: [runHistory last asString]).