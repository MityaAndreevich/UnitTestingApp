//
//  SoundBar.swift
//  UnitTestingApp
//
//  Created by Dmitry Logachev on 01.12.2021.
//

class SoundBar {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}

