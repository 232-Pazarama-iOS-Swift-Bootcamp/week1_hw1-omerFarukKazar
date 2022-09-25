//
//  main.swift
//  Market of Knight Online
//
//  Created by Ömer Faruk Kazar on 23.09.2022.
//

import Foundation

var newUser: User = User(id: "", password: "", nickname: "", job: .Mage)
var shoppingCart: [Items] = []

print("Welcome to the Market of the Knight Online!\nYou need to complete few steps to log in.\n")

func SignUpScreen() {
    print("Enter your login id: ")
    
    if let id = readLine(){
        print("Enter your password: ")
        
        if let password = readLine(){
            print("Enter your nickname: ")
            
            if let nickname = readLine(){
                
                print("""
            To select your job, write the number and press enter:
            0. \(Jobs.Warrior)\t 1. \(Jobs.Priest)
            2. \(Jobs.Rogue)\t 3. \(Jobs.Mage)
            """)
                
                if let job = readLine(){
                    if let intJob = Int(job) {
                                newUser = User(id: id, password: password, nickname: nickname, job: Jobs(rawValue: intJob) ?? Jobs.Rogue)
                                print("Successfully Signed Up & Logged in")
                            }
                        }
                    }
                }
            }
        }
SignUpScreen()

func listItems(itemsArray: [Items]) {
    
    print("\nRecommended items for \(newUser.job):")
    for i in 0..<itemsArray.count {
            print("\(i): \(itemsArray[i].name)")
        }
    itemDetails(itemsArray: itemsArray)
    
}

func itemDetails(itemsArray: [Items]) {
    print("\nType the number of item you want to see details or Type 'mypage' to go to your page")
    if let choice = readLine() {
        if choice == "mypage" { MyPage(itemsArray: itemsArray)
        } else {
            if let intChoice = Int(choice) {
                let chosenItem = itemsArray[intChoice]
                print("\nDetails: \(chosenItem.itemDetails)\nItem Rating: \(chosenItem.itemRating)")
                
                print("0: Add to Shopping Cart\t\t1: Add to Favorites\t\t")
                print("Type 'back' to go back")
                if let choice = readLine() {
                    if choice == "back" { listItems(itemsArray: itemsArray)
                    } else {
                        if let intChoice = Int(choice) {
                            switch intChoice {
                            case 0: addToShoppingCart(item: chosenItem, itemsArray: itemsArray)
                            case 1: addToFavorites(item: chosenItem, itemsArray: itemsArray)
                            case 2: listItems(itemsArray: itemsArray)
                            default: print("choose a number between 0 - 2")
                            }
                        }
                    }
                }
            }
        }
    }
}

func addToShoppingCart(item: Items, itemsArray: [Items] ) {
    shoppingCart.append(item)
    print("\nItem added to cart successfully.")
    listItems(itemsArray: itemsArray)
}

func addToFavorites(item: Items, itemsArray: [Items] ) {
    newUser.favorites.append(item)
    print("\nItem added to Favorites successfully.")
    listItems(itemsArray: itemsArray)
}

func shoppingCart(itemsArray: [Items]) {
    print("Items in the cart: \(shoppingCart)")

//    for i in 0..<shoppingCart.count {
//        print("\(i): \(shoppingCart[i])")
//    }
    
    print("Type 'buy' to buy items, Type 'back' to see items.")
    if let choice = readLine() {
        if choice == "back" { MyPage(itemsArray: itemsArray)
        } else if choice == "buy" {
            print("Choose a payment method:\n0:Cash on delivery\t\t1:On delivery with Card")
            if let choice = readLine() {
                if choice == "back" { shoppingCart(itemsArray: itemsArray)
                } else {
                    if let intChoice = Int(choice) {
                        if intChoice == 0 || intChoice == 1 {
                            print("Product has been bought.")
                            shoppingCart.removeAll()
                        }
                    }
                }
            }
        } else {
            print("Type 'buy' to buy items, Type 'back' to go back.")
            shoppingCart(itemsArray: itemsArray)
        }
    }
}

func favorites(itemsArray: [Items]) {
    print(newUser.favorites)
    print("Type back to go back.")
    if let choice = readLine() {
        if choice == "back" { MyPage(itemsArray: itemsArray)
        } else {
            print("Type 'buy' to buy items, Type 'back' to go back.")
            shoppingCart(itemsArray: itemsArray)
        }
    }
}

func MyPage(itemsArray: [Items]) {
    print("Choose what to do:")
    print("0: Go to Shopping Cart, 1: Go to Favorites")
    if let choice = readLine() {
        if choice == "back" { listItems(itemsArray: itemsArray)
        } else {
            if let intChoice = Int(choice) {
                switch intChoice {
                case 0: shoppingCart(itemsArray: itemsArray)
                case 1: favorites(itemsArray: itemsArray)
                default: print("Choose a number between 0 - 2")
                    MyPage(itemsArray: itemsArray)
                }
            }
        }
    }
}

switch newUser.job {
case .Warrior:
    listItems(itemsArray: warriorItems)
case .Rogue:
    listItems(itemsArray: rogueItems)
case .Priest:
    listItems(itemsArray: priestItems)
case .Mage:
    listItems(itemsArray: mageItems)
}

