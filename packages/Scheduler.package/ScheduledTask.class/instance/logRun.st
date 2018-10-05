private
logRun

	runHistory addLast: DateAndTime now.
	runHistory size > self maximumNumberOfHistoryEntries ifTrue: [runHistory removeFirst].
	