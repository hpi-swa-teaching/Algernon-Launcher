testing world menu types
testOpenTools
	"Test the open hotword by running different example queries for tools"
	self testOpenMenuEntry: 'Transcript'.
	self testOpenMenuEntry: 'Message Names'.
	self testOpenMenuEntry: 'Browser'.
	self testOpenMenuEntry: 'Test Runner'.
	self testOpenMenuEntry: 'Workspace'.