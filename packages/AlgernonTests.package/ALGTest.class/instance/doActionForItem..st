helpers
doActionForItem: item
	|action|
	action:= item defaultAlgeraction.
	action theTarget perform: (action theSelector) withArguments: (action theArgs asArray).