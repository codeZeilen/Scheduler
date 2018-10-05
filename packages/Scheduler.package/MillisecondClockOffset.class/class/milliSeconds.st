as yet unclassified
milliSeconds

	^ MilliSecondOffset
		ifNil: [0]
		ifNotNil: [(Time millisecondClockValue - MilliSecondOffset) \\ 1000]