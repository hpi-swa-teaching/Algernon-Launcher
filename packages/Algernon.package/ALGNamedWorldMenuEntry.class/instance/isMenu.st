accessing
isMenu
	"Some entries in the docking bar (project name) are not a real menu, but are only distinct by not having a menu morph"
	^ self morph isNil not