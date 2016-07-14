system
registeredWithSystem

	"On squeak trunk 07/14/2016 and up keyboardListeners returns nil if not registered" 
	self activeHand keyboardListeners ifNil: [ ^ false ].
	^ self activeHand keyboardListeners includes: self
	