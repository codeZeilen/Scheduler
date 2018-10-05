initialization
initialize

	running := false.
	tasks := OrderedCollection new.
	accessProtect := Semaphore forMutualExclusion