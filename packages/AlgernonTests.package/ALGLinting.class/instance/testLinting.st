helpers
testLinting
	"Test all Algernon methods for all rules defined in #lintingRules"
	
	| testRunner testObjects |
	
	testRunner := (SLTestRunner new) environment: (SLDefaultEnvironment new).
	testObjects := self collectTestObjects.
	
	testRunner runOnTests: self lintingRules andTestObjects: testObjects.
	self evaluateClassTests: testObjects