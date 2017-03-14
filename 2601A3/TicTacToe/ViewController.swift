//
//  ViewController.swift
//  TicTacToe
//
//  Created by Maxim Kuzmenko on 2017-03-08.
//  Copyright © 2017 Maxim Kuzmenko. All rights reserved.
//

import UIKit

//Images are in the Assets.xcassets folder!!!
class ViewController: UIViewController {

    var playerTurn: Bool = true;
    var gameStarted: Bool = false;
    var moves = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    var xMoves = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    var oMoves = [0, 0, 0, 0, 0, 0, 0, 0, 0];

    var gameActive = true;
    var flag: Bool = false;
    
    @IBOutlet weak var showText: UILabel!
    
    @IBAction func startAction(_ sender: UIButton) {
        print("Start button pressed");
        if(gameStarted == true){
            sender.setTitle("Stop",for: .normal)
            resetGame();
            gameStarted = false;
            toggleButtons(flag: true);
        }
        else{
            sender.setTitle("Start",for: .normal) //Set button to start meaning user has clicked stop
            toggleButtons(flag: false);
            gameStarted = true;
        }
        
        //Start game activity (Thread)
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        showText.text = "Button \(sender.tag) pressed"
        if(moves[sender.tag-1] == 0){
            if playerTurn == true {
                sender.setImage(#imageLiteral(resourceName: "button_x"), for: UIControlState())
                playerTurn = false;
                moves[sender.tag-1] = 1; //Move has been used
                xMoves[sender.tag-1] = 1;
                if(Game().checkTie(availableMoves: moves) == 1){
                    //Game is a tie
                    showText.text = "It's a tie!"
                    toggleButtons(flag: false);
                }
                else if(Game().checkGameOver(arr: xMoves) == 1){
                    //Player 1 has won
                    showText.text = "Player 1 has won!"
                    toggleButtons(flag: false); 
                }
            }
            else {
                sender.setImage(#imageLiteral(resourceName: "button_o"), for: UIControlState())
                playerTurn = true;
                moves[sender.tag-1] = 1; //Move has been used
                oMoves[sender.tag-1] = 1
                if(Game().checkTie(availableMoves: moves) == 1){
                    //Game is a tie
                    showText.text = "It's a tie!"
                    toggleButtons(flag: false);
                }
                else if(Game().checkGameOver(arr: oMoves) == 1){
                    //Player 2 has won
                    showText.text = "Player 2 has won!"
                    toggleButtons(flag: false);
                }
            }
        }
    }
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    func toggleButtons(flag: Bool){
        if(flag == true){
            btn1.isEnabled = true;
            btn2.isEnabled = true;
            btn3.isEnabled = true;
            btn4.isEnabled = true;
            btn5.isEnabled = true;
            btn6.isEnabled = true;
            btn7.isEnabled = true;
            btn8.isEnabled = true;
            btn9.isEnabled = true;
        }
        else{
            btn1.isEnabled = false;
            btn2.isEnabled = false;
            btn3.isEnabled = false;
            btn4.isEnabled = false;
            btn5.isEnabled = false;
            btn6.isEnabled = false;
            btn7.isEnabled = false;
            btn8.isEnabled = false;
            btn9.isEnabled = false;
        }
    }
    
    func resetGame(){
        playerTurn = true;
        moves = [0, 0, 0, 0, 0, 0, 0, 0, 0];
        xMoves = [0, 0, 0, 0, 0, 0, 0, 0, 0];
        oMoves = [0, 0, 0, 0, 0, 0, 0, 0, 0];
        for i in 1...9{
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(#imageLiteral(resourceName: "button_empty"), for: UIControlState())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStarted = true;
        toggleButtons(flag: false);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

