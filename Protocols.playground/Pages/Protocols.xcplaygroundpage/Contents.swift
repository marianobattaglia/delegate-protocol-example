import UIKit

// Video: https://www.youtube.com/watch?v=zalh4iGoplU&t=0s
// Victor Roldan - Que son y como funcionan los Protocols en Swift 1/3

protocol UserProtocol {
    var name : String { get }
    var lastName : String { get }
    func getFullName() -> String
}

extension UserProtocol {
    /// Metodos opcionales, colocar dentro de una extension
    func optionalMethod() {
        
    }
}

struct UserModel : UserProtocol {
    var name: String
    var lastName: String
    
    func getFullName() -> String {
        return name + " " + lastName
    }
    
}

let user = UserModel(name: "Victor", lastName: "Roldan")
user.getFullName()
