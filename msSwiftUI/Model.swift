//
//  Model.swift
//  msSwiftUI
//
//  Created by Jeisson Chacón on 6/26/23.
//

import Foundation

struct Empleado: Codable{
    let id: Int
    let firstName, lastName, email: String
    let gender: Gender
    let company: String
    let department: Department
    let jobtitle: String
    let longitude, latitude: Double
    let address, username: String
    let avatar: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first _name"
        case lastName = "last_name"
        case email, gender, company, department, jobtitle, longitude, latitude, address, username, avatar
    }
    
}

enum Department: String, Codable {
    case accounting = "Accounting"
    case businessDevelopment = "Business Development"
    case engineering = "Engineering"
    case humanResources = "Human Resources"
    case legal = "Legal"
    case marketing = "Marketing"
    case productManagement = "Product Management"
    case researchAndDevelopment = "Research and Development"
    case sales = "Sales"
    case services = "Services"
    case support = "Support"
    case training = "Training"
    
}

enum Gender: String, Codable {
    case agender = "Agender"
    case bigender = "Bigender"
    case female = "Female"
    case genderfluid = "Genderfluid"
    case genderqueer = "Genderqueer"
    case male = "Male"
    case nonBinary = "Non-binary"
    case polygender = "Polygender"
}

class EmpleasdosModel{
    var empleados : [Empleado] = []
    
    init(){
        guard let url = Bundle.main.url(forResource: "EMPLEADOS", withExtension: "json") else{
            empleados = []
            return
        }
        do{
            let data = try Data(contentsOf: <#T##URL#>)
            empleados = try JSONDecoder().decode([Empleado].self, from: <#T##Data#>)
            //let data = JSONDecoder().decode([Empleado].self, from: <#T##Data#>)
        }catch{
            print("Error en la carga \(error)")
        }
        empleados = []
    }
}
