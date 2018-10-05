executing
start

	<rackOperationLabel: 'start' inContextMenus: true>

	| process |
	running ifTrue: [^ self].
	
	running := true.
	
	process := [
		[running] whileTrue: 
			[0.25 seconds asDelay wait.
			self tasksDo: [:each | each runIfNecessary]]] newProcess.
	
	(process respondsTo: #name:) ifTrue: [process name: 'taskScheduler'].
	
	process priority: Processor systemBackgroundPriority.
	
	process resume.
