accessing
yieldTop

	yieldTop ifNil: [ self yieldTop: true ].
	^ yieldTop