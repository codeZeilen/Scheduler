scheduling
do: aBlock following: aSchedule

	^ self addTask: (ScheduledTask new
		scheduler: self;
		task: aBlock;
		schedule: aSchedule)