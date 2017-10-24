//
//  ItemStore.swift
//  Homepwner
//
//  Created by Jonathan Martin on 10/24/17.
//  Copyright © 2017 Jonathan Martin. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    //creates an item
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }

    //updates the itemstore when an item is removed
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        //get reference to object being moved so it can be manipulated
        let movedItem = allItems[fromIndex]
        
        //remove item from the array
        allItems.remove(at: fromIndex)
        
        //add it back at the correct location
        allItems.insert(movedItem, at: toIndex)
    }
    
    
    
    
    
}
