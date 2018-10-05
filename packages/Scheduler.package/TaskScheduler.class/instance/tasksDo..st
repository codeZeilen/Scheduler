accessing
tasksDo: aOneArgBlock
	
	| copiedTasks |
	accessProtect critical: [copiedTasks := tasks copy].
	
	copiedTasks do: aOneArgBlock