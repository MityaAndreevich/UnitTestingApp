//
//  SoundBarTests.swift
//  SoundBarTests
//
//  Created by Dmitry Logachev on 01.12.2021.
//

import XCTest
@testable import UnitTestingApp

class SoundBarTests: XCTestCase {
    var sut: SoundBar!

    override func setUp() {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
       // given (что дано?)
        sut.setVolume(to: 0)
        
       // when (Что произошло?)
        let volume = sut.volume
        
        // then (Что додлжно получиться?)
        XCTAssert(volume == 0, "Lowest volume should be equal to 0")
    }
    
    func testHighestVolumeShouldBeHundred() {
       // given (что дано?)
        sut.setVolume(to: 101)
        
       // when (Что произошло?)
        let volume = sut.volume
        
        // then (Что додлжно получиться?)
        XCTAssert(volume == 100, "Highest volume should be equal to 100")
    }

    func testPerformanceExample() throws {
        measure {
            sut.setVolume(to: 100)
        }
    }

}
