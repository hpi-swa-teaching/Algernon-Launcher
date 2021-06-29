testing
tearDown

	super tearDown.
	ALGCore executeOnTab: executeOnTab.
	executeOnTab := nil