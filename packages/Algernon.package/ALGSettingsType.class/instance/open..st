actions
open: aSetting

	| browser |
	browser := PreferenceBrowser new.
	(PreferenceBrowserMorph withModel: browser) openInWorld.
	browser selectedCategory: aSetting