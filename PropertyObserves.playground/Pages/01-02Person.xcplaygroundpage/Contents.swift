
import Foundation

struct Person {
  
  var clothe: String {
    willSet(newClothe)
    
    {
      print("I'm changing from \(clothe) to \(newClothe)")
    }
    didSet(oldClothe)   {
      print ("I've just changed from \(oldClothe) to \(clothe)")
      
      if clothe == "white T-shirt" {
        clothe="Blue T-shirt"
      }
    }
  }
}
var person = Person(clothe: "Blue T-shirt")
person.clothe = "white T-shirt"

print("clothe \(person.clothe)")
person.clothe = "black T-shirt"



