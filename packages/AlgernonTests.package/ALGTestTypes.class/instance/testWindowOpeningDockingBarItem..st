testing docking bar types
testWindowOpeningDockingBarItem: menuEntry 
	
	self assertQuery: 'open ' , menuEntry withCursorAt: 'Docking Bar Item' opensNewWindow: menuEntry