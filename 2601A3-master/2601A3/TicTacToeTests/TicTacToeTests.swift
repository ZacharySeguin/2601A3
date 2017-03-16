//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Maxim Kuzmenko on 2017-03-08.
//  Copyright © 2017 Maxim Kuzmenko. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let num: Int = 1
        let num2: Int = 5
        let testArr1: [Int] = [0,0,0,0,0,0,0,0,0]
        let testArr2: [Int] = [1,1,1,1,1,1,1,1,1]
        let testArr3: [Int] = [0,0,1,0,0,1,0,0,1]
        let testArr4: [Int] = [1,1,1,0,0,0,0,0,0]
        let testArr5: [Int] = [0,1,0,0,1,0,0,1,1]
        let testArr6: [Int] = [1,0,0,0,1,0,0,0,1]
        let game = Game()
        
        XCTAssertEqual(6, num + num2) //Basic testing
        XCTAssertEqual(0, game.checkGameOver(arr: testArr1)) //EmptyBoard
        XCTAssertEqual(0, game.isTie(availableMoves: testArr1)) //EmptyBoard
        XCTAssertEqual(1, game.isTie(availableMoves: testArr2)) //Full board
        XCTAssertEqual(1, game.checkGameOver(arr: testArr3)) //Vertical win
        XCTAssertEqual(1, game.checkGameOver(arr: testArr5)) //Vertical win
        XCTAssertEqual(1, game.checkGameOver(arr: testArr4)) //Horizontal win
        XCTAssertEqual(1, game.checkGameOver(arr: testArr6)) //Diagonal win
        XCTAssertEqual(0, game.isTie(availableMoves: testArr4)) //Game in progress
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
