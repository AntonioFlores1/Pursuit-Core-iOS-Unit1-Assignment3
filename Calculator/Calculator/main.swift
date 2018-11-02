//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

var MyGame = true
repeat {
    print("Which Feature would you Like to use?: (Cal), (Highorder), (OpGame)")
    
    if let UserResponse = readLine() {
        
        switch UserResponse.lowercased() {
            
        case "cal":
            print("equation")
            if let userInput = readLine() {
                func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
                    switch opString {
                    case "+":
                        return {x, y in x + y }
                    case "-":
                        return {x, y in x - y }
                    case "*":
                        return {x, y in x * y }
                    case "/":
                        return {x, y in x / y }
                    default:
                        return {x, y in x + y }
                    }
                }
                
                let components = userInput.components(separatedBy: " ")
                print(components) /// "5" "*" "5"
                
                let symbols = userInput.filter(){"+-/*".contains($0)} /// * + / -
                print(symbols) ///*
                
                
                
                
                
                let equation = mathStuffFactory(opString: symbols)
                let compactMapped: [Int] = components.compactMap { str in Int(str) }
                print(compactMapped)
                var firstResult = equation(Double(compactMapped[0]),  Double(compactMapped[1]))
                print("\(userInput) = \(firstResult)")
                
            }
            
            
            
            
            
            
            
            
            
        /// sta
        case "highorder":
            print("Welcom to HighOrder what do you want to do: (Filter) , (Map) , (Reduce) ")
            
            let secondResponse =  "filter 3,4,5,4,2,35 by < 6" //readLine(){
            
            if secondResponse.hasPrefix("filter") == true {
                func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
                    
                    var newArray = [Int]()
                    for num in inputArray {
                        if filter(num) {
                            newArray.append(num)
                        }
                    }
                    return newArray
                }
                var arraynum = secondResponse.components(separatedBy: " ")
                print(arraynum)
                if arraynum.count == 5 {
                    if let filterNumBy = Int(arraynum[4]) {
                        var numberIndexStr = arraynum[1]
                        var compOfFirstIndex = numberIndexStr.components(separatedBy: ",")
                        print(compOfFirstIndex)// change to Ints
                        var idk = [Int]()
                        for thing in compOfFirstIndex {
                            if let onlynum = Int(thing) {
                                idk.append(onlynum)
                                
                            }
                            
                        }
                        print(myFilter(inputArray: idk, filter: {$0 < filterNumBy}))
                    }
                } else {
                    print("Not like My Example smh")
                }
            }
            
            
            if secondResponse.hasPrefix("map") == true {
                
                var arraynum2 = secondResponse.components(separatedBy: " ")
                print(arraynum2)
                if arraynum2.count == 5 {
                    
                    //                    func myFilter(inputArray: [Int], filter: (Int) -> [Int]) -> [Int] {
                    //
                    //                        }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
            if secondResponse.hasPrefix("reduce") == true {
                print("3")
            } else {
                //print("Try again")
            }
            //}
            
            
            
            
            //                    print("in")
            //                    var numer = secondResponse.hasPrefix("filter")
            //                    print(numer)
            //                    func highorder(keyword: String) -> String {
            //                        switch keyword {
            //                        case "filter":
            //                            return "bye"
            //                        case "map":
            //                            return "hello"
            //                        case "reduce":
            //                            return "hi"
            //                        default:
            //                            return ("I don't know that one")
            //                        }
            //                    }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        case "opgame":
            print("3")
            
            if let thirdInput = readLine() {
                
                func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
                    switch opString {
                    case "+":
                        return {x, y in x + y }
                    case "-":
                        return {x, y in x - y }
                    case "*":
                        return {x, y in x * y }
                    case "/":
                        return {x, y in x / y }
                    default:
                        return {x, y in x + y }
                    }
                }
                
                let components = thirdInput.components(separatedBy: " ")
                // print(components) /// "5" "?" "5"
                if components.contains("?"){
                    //randomlypick a sign
                    let symbolarray = ["+","/","*","-"]
                    //let symbols = thirdInput.filter(){"+-/*".contains($0)} /// * + / -
                    
                    //print(symbols) ///*
                    if let randomsymbol = symbolarray.randomElement(){
                        print(randomsymbol)
                        let equation = mathStuffFactory(opString: randomsymbol)
                        let compactMapped: [Int] = components.compactMap { str in Int(str) }
                        //print(compactMapped)
                        let result = equation(Double(compactMapped[0]),  Double(compactMapped[1]))
                        
                        print("\(thirdInput) = \(result)")
                        
                    }
                }
            }
        default:
            print("I dont know that one")
            
        }
    }
} while MyGame
