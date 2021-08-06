testing docking bar types
testOpenTools
	"Test the open hotword by running different example queries for tools"
	self testWindowOpeningDockingBarItem: 'Transcript'.
	self testWindowOpeningDockingBarItem: 'Message Names'.
	self testWindowOpeningDockingBarItem: 'Browser'.
	self testWindowOpeningDockingBarItem: 'Test Runner'.
	self testWindowOpeningDockingBarItem: 'Workspace'