accessing
enabledMenuSubmorphs
	
	"Some submorphs can't be disabled (e.g. line, ...)"
	^ (self menuSubmorphs, self subMenuSubmorphs) select: [:menuItem | (menuItem class canUnderstand: #isEnabled) not or: [menuItem isEnabled]]