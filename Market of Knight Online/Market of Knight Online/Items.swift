//
//  Items.swift
//  Market of Knight Online
//
//  Created by Ömer Faruk Kazar on 23.09.2022.
//

import Foundation



enum ItemType {
    case Armor, Weapon, Shield, Necklace, Earring, Belt, Ring // Use Switch case to list items by their item type
}


struct Items {
    private let productID: UUID = UUID() // UUID for unique items
    let name: String
    let suitableFor: Jobs
    let itemtype: ItemType
    let itemDetails: String
    let itemRating: Float16 // Since rating is between 0.0 - 10.0, Float16 is used instead of Double in order to use less memory.
    let userComments: [String]
}


let rogueChitinShellSet = Items(name: "Rogue Chitin Shell Set", suitableFor: .Rogue, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let priestChitinShellSet = Items(name: "Priest Chitin Shell Set", suitableFor: .Priest, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let mageChitinShellSet = Items(name: "Mage Chitin Shell Set", suitableFor: .Mage, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let warriorChitinShellSet = Items(name: "Warrior Chitin Shell Set", suitableFor: .Warrior, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let rogueChitinSet = Items(name: "Rogue Chitin Set", suitableFor: .Rogue, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let priestChitinSet = Items(name: "Priest Chitin Set", suitableFor: .Priest, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let mageChitinSet = Items(name: "Mage Chitin Set", suitableFor: .Mage, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let warriorChitinSet = Items(name: "Warrior Chitin Set", suitableFor: .Warrior, itemtype: .Armor, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let chitinShield = Items(name: "Chitin Shield", suitableFor: .Warrior, itemtype: .Shield, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let raptor = Items(name: "Raptor", suitableFor: .Warrior, itemtype: .Weapon, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let shard = Items(name: "Shard", suitableFor: .Rogue, itemtype: .Weapon, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let wreathOfErenion = Items(name: "Wreath Of Erenion", suitableFor: .Mage, itemtype: .Weapon, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let smiteHammer = Items(name: "Smite Hammer", suitableFor: .Priest, itemtype: .Weapon, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let lichKingsPride = Items(name: "Lich King's Pride", suitableFor: .Mage, itemtype: .Earring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let cockatricesEarring = Items(name: "Cockatrice's Earring", suitableFor: .Rogue, itemtype: .Earring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let minotaursEarring = Items(name: "Minotaur's Earring", suitableFor: .Warrior, itemtype: .Earring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let secretSilverEarring = Items(name: "Secret Silver Earring", suitableFor: .Priest, itemtype: .Earring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let stringOfSkulls = Items(name: "StringOfSkulls", suitableFor: .Warrior, itemtype: .Belt, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let elfBelt = Items(name: "Elf Belt", suitableFor: .Rogue, itemtype: .Belt, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let glassBelt = Items(name: "Glass Belt", suitableFor: .Priest, itemtype: .Belt, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let lightBeltOfLife = Items(name: "Light Belt Of Life", suitableFor: .Mage, itemtype: .Belt, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let ironBelt = Items(name: "Iron Belt", suitableFor: .Warrior, itemtype: .Belt, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let priestPendant = Items(name: "Priest Pendant", suitableFor: .Rogue, itemtype: .Necklace, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let amuletOfLife = Items(name: "Amulet Of Life", suitableFor: .Priest, itemtype: .Necklace, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let amuletOfStrength = Items(name: "Amulet Of Strength", suitableFor: .Warrior, itemtype: .Necklace, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let elementalPendant = Items(name: "Elemental Pendant", suitableFor: .Mage, itemtype: .Necklace, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let foverin = Items(name: "Foverin", suitableFor: .Warrior, itemtype: .Ring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let legionnaireBand = Items(name: "Legionnaire Band", suitableFor: .Rogue, itemtype: .Ring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let flameRing = Items(name: "Flame Ring", suitableFor: .Mage, itemtype: .Ring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])
let platinumRing = Items(name: "Platinum Ring", suitableFor: .Priest, itemtype: .Ring, itemDetails: "", itemRating: 9.8, userComments: ["This item is perfect", "Fast Shipment", "Best buy experience"])

let rogueItems: [Items] = [rogueChitinShellSet, rogueChitinSet, shard, chitinShield, elfBelt, ironBelt]
let priestItems: [Items] = [priestChitinShellSet, priestChitinSet, amuletOfLife, glassBelt, ironBelt, secretSilverEarring, smiteHammer]
let warriorItems: [Items] = [warriorChitinSet, warriorChitinShellSet, raptor, minotaursEarring,amuletOfStrength, foverin, ironBelt, chitinShield]
let mageItems: [Items] = [mageChitinSet, mageChitinShellSet, elementalPendant, flameRing, lightBeltOfLife, wreathOfErenion]
