//
//  Observer.swift
//  TicTacToe
//
//  Created by Maxim Kuzmenko on 2017-03-15.
//  Copyright © 2017 Maxim Kuzmenko. All rights reserved.
//

import Foundation

protocol Observer{
    func didWin(verdict: Int, player: Int);
    var xMoves : [Int] { get }
    var oMoves :  [Int] { get }
    var moves : [Int] { get }

};
