//
//  PersonTests.swift
//  UnitTestingAppTests
//
//  Created by Dmitry Logachev on 01.12.2021.
//

import XCTest
@testable import UnitTestingApp

class PersonTests: XCTestCase {
    var person: Person?
    
    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone: "Bar")
    }
    
    override func tearDown() {
        person = nil
        super.tearDown()
    }
    
    func testInitPersonWithNameAndPhone() {
       // let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        //let person = Person(name: "Foo", phone: "Bar")
        
        XCTAssertEqual("Foo", person?.name)
        XCTAssertEqual("Bar", person?.phone)
    }
    
    func testWhenGivenSurnameSetsSurname() {
        let person = Person(name: "Foo", surname: "Baz", phone: "Bar")
        
        XCTAssertEqual("Baz", person.surname)
    }
    
    func testInitPersonWithImage() {
        let image = UIImage(systemName: "person.crop.circle")
        let imageData = image?.pngData()
        let person = Person(name: "Foo", phone: "Bar", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
}
