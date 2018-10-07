accessing
startDateAndTime: aDateAndTime duration: aDuration

	| timeParameter |
	timeParameter := self convertToTimeParameter: aDateAndTime.
	 
	nextRunTime := ((timeParameter isKindOf: Time)
		ifTrue:
			[DateAndTime today + timeParameter]
		ifFalse:
			[timeParameter]).
			
	schedule := Schedule starting: self nextRunTime duration: 1000 weeks.
	schedule schedule: {aDuration}.	
		
	self setNextRunTime

