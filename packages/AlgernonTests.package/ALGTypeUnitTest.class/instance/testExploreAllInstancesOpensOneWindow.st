testing class type
testExploreAllInstancesOpensOneWindow
	
	| windows newWindows |
	windows := self findSystemWindowsByLabel: 'instances of Morph'.
	ALGClassType exploreAllInstancesFor: Morph.
	
	newWindows := self findNewSystemWindowsByLabel: 'instances of Morph' old: windows.
	self assert: 1 equals: newWindows size
	