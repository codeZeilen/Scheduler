private
setNextRunTime

	self scheduleHasOnlyZeroDuration ifTrue: [^ self].
	
	schedule scheduleDo:
		[:each | (each > DateAndTime now) ifTrue: [nextRunTime := each. ^ self]].
	
	self delete "delete if no more scheduled tasks"