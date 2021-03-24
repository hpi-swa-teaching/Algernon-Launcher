testing mouse handling
testBreadcrumbDoesNotHandleMouseEvents
	self deny: (self algInstance breadcrumbs handlesMouseDown: nil)