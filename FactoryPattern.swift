//
//  FactoryPattern.swift
//  Patterns
//
//  Created by Rijo George on 21/04/19.
//  Copyright © 2019 Rijo George. All rights reserved.
//

import Foundation

class Reading{
    func buy(){}
}

 class FictionBook:Reading{
    override func buy(){}
}

 class NonFictionBook:Reading{
    override func buy(){}
}

 class KidsBook:Reading{
    override func buy(){}
}

 class BiographyBook:Reading{
    override func buy(){}
}

class BookReader {
    // Implement Logic
    static func getBooks(for age: Int) -> Reading {
        switch age {
        case 0...6:
            return KidsBook()
        case 7...9:
            return FictionBook()
        case 10...18:
            return NonFictionBook()
        default:
            return BiographyBook()
        }
    }
}

// Using the toy factory
class Factory{
    func produce(){
        let toy = BookReader.getBooks(for: 30)
        toy.buy()
    }
}

