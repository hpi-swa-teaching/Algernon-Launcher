testing
testMouseDownDoesNotDeactivate
	
	"TODO: also test that nothing else deactivates algernone if clicked on breadcrumbs"
	controller deactivated: false.
	controller mouseDown: MouseButtonEvent new.
	self deny: controller deactivated