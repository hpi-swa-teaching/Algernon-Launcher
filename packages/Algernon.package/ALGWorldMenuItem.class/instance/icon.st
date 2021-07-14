icon
icon

	^ self class iconMapping 
			at: self algerType typeObject category
			ifAbsent: [ #WorldMenu ]