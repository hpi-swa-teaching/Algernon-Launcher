list creation
runTestSuite
	| runner testSuite |
	runner := TestRunner new.
	ToolBuilder open: runner.
	testSuite := TestSuite  named: self name.
	TestCase addTestsFor: self name toSuite: testSuite.
	runner runSuite: testSuite.
	
	