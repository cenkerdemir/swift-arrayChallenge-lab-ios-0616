//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let QuantitiesInList = [6,4,12,4]
        let itemsInList = ["Bananas", "Apples" , "Eggs", "Rolls"]
        
        shoppingList = makeShoppingList(itemsInList, quantityOfItems: QuantitiesInList)
    }
    
    func makeShoppingList(items: [String], quantityOfItems: [Int]) -> [String] {
        var fullShoppingList : [String] = []
        
        for (index, item) in items.enumerate() {
                fullShoppingList.append("\(index+1). \(quantityOfItems[index]) \(item)")
        }
        return fullShoppingList
    }
    
}