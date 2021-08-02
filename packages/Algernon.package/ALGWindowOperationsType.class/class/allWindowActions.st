algertem lists
allWindowActions

	^ {'Collapse all windows' -> #collapseAllWindows.
		'Close all windows' -> #closeAllWindows.
		'Close all windows without changes' -> #closeWithoutChanges.
		'Close all windows but workspaces' -> #closeAllButWorkspaces
		} asOrderedCollection