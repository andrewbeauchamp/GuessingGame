//
//  main.swift
//  Guessing Game
//
//  Created by Andrew Beauchamp on 8/20/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation

var playingGame = true

//This loop will run while we are playing the game
repeat {
    let randomNumber = Int (arc4random_uniform(101))
    print("Random number: \(randomNumber)")
    var numberOfGuesses = 5
    
    //WELCOME THE USER AND PROMPT THEM FOR AN INPPUT
    print("Welcome to the guessing game!")
    print("Please guess a number from 0-100.")
    var userGuess = Int (readLine( )! )
    //If userGuess can't be converted to an interger userGuess will equal nil
    //Input Validation
    while userGuess == nil {
        //Prompt the user to enter a valid nuumber
        print("User needs to enter a valid number")
        //Get user imput again
        userGuess = Int (readLine( )! )
    }

    if userGuess == randomNumber {
        var userResponse = readLine( )! .uppercased( )
        print("Great Work!")
        while userResponse != "Y" && userResponse != "N" {
            print("Would you like to play again? Y/N")
            userResponse = readLine( )!
            if userResponse ==  "N" {
                playingGame = false
            }
            
        }
        
    }
    while numberOfGuesses > 1 && userGuess != randomNumber {
        if userGuess! < randomNumber {
            print("You're guess is too low")
            numberOfGuesses -= 1
            print("Number of Guesses \(numberOfGuesses) ")
            userGuess = Int (readLine( )!)
        } else if userGuess! > randomNumber {
            print("You're guess is too High")
            numberOfGuesses -= 1
            print("Number of Guesses \(numberOfGuesses) ")
            userGuess = Int (readLine( )! )
        }
        
        if numberOfGuesses == 1 {
            print(" You lost, the correct answer was \(randomNumber) would you like to play again ? Y/N")
            var userResponse = readLine( )! .uppercased( )
            while userResponse != "Y" && userResponse != "N" {
                print("Would you like to play again? Y/N")
                userResponse = readLine( )!
            }
            
            if userResponse ==  "N" {
                playingGame = false
            }
        }
        
    }
    
    
}  while playingGame == true















































