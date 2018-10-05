baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [spec 
				package: 'Scheduler';
				yourself.
			spec
				group: 'default' with: #('Scheduler')];
				yourself