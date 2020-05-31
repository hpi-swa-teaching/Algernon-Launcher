accessing
layoutFrameFor: aSymbol 
	^ LayoutFrame
		fractions: ((self morphLayoutFractions at: aSymbol , 'Start')
				corner: (self morphLayoutFractions at: aSymbol , 'End'))