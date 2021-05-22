testing world menu types
testOpenTools
	"Test the open hotword by running different example queries for tools"
	self testWorldMenuItem: 'Transcript'.
	self testWorldMenuItem: 'Message Names'.
	self testWorldMenuItem: 'Browser'.
	self testWorldMenuItem: 'Test Runner'.
	self testWorldMenuItem: 'Workspace'.