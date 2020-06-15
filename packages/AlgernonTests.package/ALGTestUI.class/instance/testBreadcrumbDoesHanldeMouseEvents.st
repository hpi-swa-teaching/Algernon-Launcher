testing
testBreadcrumbDoesHanldeMouseEvents
	"for ticket 11"
	self assert: (self algerInstance breadcrumb handlesMouseDown: nil).
	