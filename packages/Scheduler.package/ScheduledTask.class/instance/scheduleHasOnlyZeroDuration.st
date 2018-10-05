private
scheduleHasOnlyZeroDuration

	^ schedule schedule size = 1 and: [schedule schedule first = Duration zero]