class Animal{
	var name : String?
	
	let gender = “female”
	
	//declaring some variables and constants

	func animalType() -> String{
		var animalType: [String] = []
		if let name = self.name{
		animalType += [name]
	}
		if let gender = self.gender {
			animalType += [gender]
		}
	return “ ”.join(animalType)			
	
	}
}
