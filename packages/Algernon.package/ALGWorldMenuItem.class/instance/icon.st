icon
icon

	^ self class mapping 
			at: self algerType typeObject category
			ifAbsent: [ #WorldMenu ]