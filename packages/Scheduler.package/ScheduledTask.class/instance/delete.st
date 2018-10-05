executing
delete

	<rackOperationLabel: 'delete from scheduler' inContextMenus: true>

	scheduler removeTask: self.
	self changed.