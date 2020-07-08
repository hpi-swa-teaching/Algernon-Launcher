testing
testBreadcrumbDoesHanldeMouseEvents
	"for ticket 11"
	self assert: (self algInstance breadcrumb handlesMouseDown: nil).
	