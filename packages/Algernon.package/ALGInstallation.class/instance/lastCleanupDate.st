accessing
lastCleanupDate
	"Needs to be initialized here because constructor might not be called in existing installation"
	lastCleanupDate ifNil: [ self lastCleanupDate: Date today ].
	^ lastCleanupDate