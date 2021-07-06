instance creation
newFrom: aMorph

	^ self new
			morph: aMorph;
			selector: 
				((aMorph isKindOf: MenuItemMorph)
					ifTrue: [aMorph selector]);
			yourself