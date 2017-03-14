//
//  Game.swift
//  TicTacToe
//
//  Created by Zachary Seguin on 2017-03-13.
//  Copyright © 2017 Maxim Kuzmenko. All rights reserved.
//

import Foundation

class Game: ViewController{
    func checkGameOver(arr: [Int])->Int{
        //This func will check if the game is over (winning conditions)
        let winningConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
        
        for condition in winningConditions{
            if(arr[condition[0]] != 0 && arr[condition[0]] == arr[condition[1]] && arr[condition[1]] == arr[condition[2]]){
                if(arr[condition[0]] == 1){
                    print("A player has won...");
                    return 1;
                }
            }
        }
        return 0; //Returning 0 means the game is not over
    }
    func checkTie(availableMoves: [Int])->Int{
        print(availableMoves)
        for i in availableMoves{
            if(i == 0){
                return 0
            }
        }
        return 1 //Game is a tie
    }
}
