initialization
registerWithSystem
	self activeHand addKeyboardListener: self.
	
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #class  using: #systemChanged:. 
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #protocol  using: #systemChanged:. 
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #category using: #systemChanged:. 
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method  using: #systemChanged:. 
	"SystemChangeNotifier uniqueInstance notify:self ofAllSystemChangesUsing:#systemChanged:."

	
	