//
//  Person.swift
//  UnitTestingApp
//
//  Created by Dmitry Logachev on 01.12.2021.
//

import Foundation

class Person {
    let name: String
    let surname: String?
    let phone: String
    var image: Data?
    
    init(name: String, surname: String? = nil, phone: String, image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.image = image
    }
}
