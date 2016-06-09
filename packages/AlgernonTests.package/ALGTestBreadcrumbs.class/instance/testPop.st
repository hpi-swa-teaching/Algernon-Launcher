testing
testPop
	
	| item breadcrumbCount |
	item := ALGClassType algertemList first.
	breadcrumbCount := breadcrumbs submorphs size.
	breadcrumbs push: item.
	breadcrumbs pop.
	self assert: breadcrumbs submorphs size equals: breadcrumbCount