testing
testBreadcrumbDoesNotHandleMouseEvents
	self deny: (self algInstance breadcrumbs handlesMouseDown: nil).