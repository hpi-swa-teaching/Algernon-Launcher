testing class type
testExploreAllInstancesOpensOneWindow

	self assert: [ALGClassType exploreAllInstancesFor: Morph] opensNewWindow: 'instances of Morph'