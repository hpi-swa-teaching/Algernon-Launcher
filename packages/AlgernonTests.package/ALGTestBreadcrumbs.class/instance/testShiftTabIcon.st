testing
testShiftTabIcon
	self deny: breadcrumbs navigateBackIconMorph visible.
	breadcrumbs showNavigateBackIcon.
	self assert: breadcrumbs navigateBackIconMorph visible.
	breadcrumbs hideNavigateBackIcon.
	self deny: breadcrumbs navigateBackIconMorph visible.