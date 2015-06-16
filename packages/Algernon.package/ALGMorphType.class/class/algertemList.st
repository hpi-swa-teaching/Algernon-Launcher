algertem list
algertemList
	|eligibleClasses quads algertems|
	algertems := OrderedCollection new.
	eligibleClasses := Morph withAllSubclasses.
	quads := OrderedCollection new.
	self flag: #todo. "This is nor working by now and causes no Transcript or Workspace shown when search, but I'll wait until Pharo 1.0 released to fix it"
	"eligibleClasses	do: [:aClass | aClass theNonMetaClass addPartsDescriptorQuadsTo: quads if: [:info | true]].
	quads do: [ :each | algertems add: (Algertem withAlgertype: (self with:(DescriptionForPartsBin fromQuad: each categoryList:nil)))]."
	
	^algertems.

