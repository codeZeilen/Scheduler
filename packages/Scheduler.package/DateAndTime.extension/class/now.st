*Scheduler-override
now
	^ self basicNew 
		ticks: (Duration 
				days: SqueakEpoch 
				hours: 0 
				minutes: 0 
				seconds: self totalSeconds 
				nanoSeconds: MillisecondClockOffset milliSeconds * NanosInMillisecond) ticks
		offset: self localOffset;
		yourself
