testing window type
openBrowser

	| builder  windowSpec |
	builder := ToolBuilder default.

	windowSpec := Browser new buildDefaultBrowserWith: builder.
	^ builder open: windowSpec