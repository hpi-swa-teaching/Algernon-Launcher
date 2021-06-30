events-processing
handleActivationKeyEvent: anEvent

	| timestamp difference isTrigger isSecond |
	timestamp := TimeStamp current time asNanoSeconds.
	difference := timestamp - (lastActivationKeyTimestamp ifNil: [0]).
	isSecond := difference <= self class maxHalfClickDeviation.
	isTrigger := self class activateOnSingleClick or: [isSecond].

	isTrigger 
		ifTrue: [
			lastActivationKeyTimestamp := nil.
			self toggleVisibility: anEvent ]
		ifFalse: [
			lastActivationKeyTimestamp := timestamp ]