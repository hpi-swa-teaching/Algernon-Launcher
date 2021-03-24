testing package type
testPackageAlgerItems
	| algerItems |
	algerItems :=  ALGPackageType algertemList. 
	self denyEmptyAlgertemListForType: ALGPackageType.
	self assert: (algerItems allSatisfy: [:each | each algerType typeName = 'Package']).
	self assert: (algerItems noneSatisfy: [:each | each algerType name isEmpty]).