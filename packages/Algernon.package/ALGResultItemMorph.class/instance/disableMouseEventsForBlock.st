event handling
disableMouseEventsForBlock
	^ [:morph | morph extension isPartsDonor: true. morph releaseEditor.]