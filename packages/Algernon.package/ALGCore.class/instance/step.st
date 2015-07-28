stepping
step
	"Delay updating if multiple characters are entered quickly in a sequence:"

	self updateItemList.
	(self lastInputTime) ifNil: [ ^ self ].
	self stopStepping