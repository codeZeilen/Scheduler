scheduling
do: aBlock at: when every: aDuration

	^ self addTask: (ScheduledTask new
		scheduler: self;
		task: aBlock;
		startDateAndTime: when
		duration: aDuration)