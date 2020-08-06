testing
testPush
	| item breadcrumbCount |
	item := ALGClassType algertemList first.
	breadcrumbCount := breadcrumbs submorphs size.
	breadcrumbs push: item.
	self assert: breadcrumbs submorphs size equals: breadcrumbCount + 1