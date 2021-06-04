testing world menu types
testOpenTools
	"Test the open hotword by running different example queries for tools"
	self testWindowOpeningWorldMenuItem: 'Transcript'.
	self testWindowOpeningWorldMenuItem: 'Message Names'.
	self testWindowOpeningWorldMenuItem: 'Browser'.
	self testWindowOpeningWorldMenuItem: 'Test Runner'.
	self testWindowOpeningWorldMenuItem: 'Workspace'