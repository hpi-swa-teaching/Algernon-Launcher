testing mouse handling
testBreadcrumbsShowShiftTabHint
	self runQuery: 'AlgernonTests' withCursorAt: 'Category'.
	self algInstance showChildList.
	self assert: self algInstance breadcrumbs navigateBackIconMorph visible.
	self algInstance showParentList.
	self deny: self algInstance breadcrumbs navigateBackIconMorph visible.