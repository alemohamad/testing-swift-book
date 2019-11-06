//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Ale Mohamad on 06/11/2019.
//  Copyright © 2019 Ale Mohamad. All rights reserved.
//

import XCTest

extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControlDisallowed
}

struct Game {
    let name: String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlDisallowed
        } else {
            print("\(name) is OK to play!")
        }
    }
}

class ThrowingTests: XCTestCase {
    
    func testPlayingBioBlitzThrows() {
        let game = Game(name: "BioBlitz")
        
        do {
            try game.play()
            XCTFail("BioBlitz has not been purchased.")
        } catch GameError.notPurchased {
            // success!
        } catch {
            XCTFail("BioBlitz has not been purchased.")
        }
    }
    
    func testPlayingBlastazapThrows() {
        let game = Game(name: "Blastazap")
        
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    func testPlayingExplodingMonkeysDoesntThrow() {
        let game = Game(name: "Exploding Monkeys")
        XCTAssertNoThrow(try game.play())
    }
    
    func testDeadStormRisingThrows() throws {
        let game = Game(name: "Dead Storm Rising")
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.parentalControlDisallowed)
        }
    }
    
    func testCrashyPlaneDoesntThrows() throws {
        let game = Game(name: "CrashyPlane")
        try game.play()
    }
    
}
