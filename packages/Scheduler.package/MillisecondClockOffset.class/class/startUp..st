as yet unclassified
startUp: resuming

	resuming ifFalse: [^ self].
	
	MilliSecondOffset _ nil.
	[MilliSecondOffset _ self getMilliSecondOffset] fork