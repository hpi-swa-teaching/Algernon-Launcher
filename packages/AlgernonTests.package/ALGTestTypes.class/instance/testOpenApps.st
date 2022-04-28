testing docking bar types
testOpenApps
	"Test the open hotword by running different example queries for apps"
	self testWindowOpeningDockingBarItem: 'Preference Browser'.
	self testWindowOpeningDockingBarItem: 'Services Browser'