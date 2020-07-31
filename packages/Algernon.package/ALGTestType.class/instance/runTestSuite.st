actions
runTestSuite
	| runner testSuite |
	runner := TestRunner new.
	testSuite := TestSuite named: self name.
	ToolBuilder open: runner.
	TestCase addTestsFor: self name toSuite: testSuite.
	runner runSuite: testSuite