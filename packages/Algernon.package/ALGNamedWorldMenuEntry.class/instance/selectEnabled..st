accessing
selectEnabled: aCollection
	
	"Some submorphs can't be disabled (e.g. line, ...)"
	^ aCollection select: [:menuItem | menuItem isEnabled]