//
//  AbstractFactoryPattern.swift
//  Patterns
//
//  Created by Rijo George on 21/04/19.
//  Copyright © 2019 Rijo George. All rights reserved.
//

import Foundation


class Books{
    
}

class Fiction:Books{
    
}

class NonFiction:Books{
    
}

class Gadgets{
    
}


class Mobile:Gadgets{
    
}

class Watch:Gadgets{
    
}

class Dress{
    
}

class Tshirt:Dress{
    
}

class Jeans:Dress{
    
}

struct Trip{
    let books:Books
    let gadgets:Gadgets
    let dress:Dress
}


class Tripping{
    
    // normal method
    func goTrip(){
        let book = Fiction()
        let gadget = Watch()
        let dress = Jeans()
        let trip = Trip(books: book, gadgets: gadget, dress: dress)
    }
    //factory method
    func factoryGoTrip(){
        let trip = TripFactory.makeShortTrip()
        trip.gadgets()
        trip.book()
        trip.dress()
    }
}


//Abstract Factory
class TripFactory {
    func book() -> [Books]? {
        return nil
    }
    
    func gadgets() -> [Gadgets]? {
        return nil
    }
    
    func dress() -> [Dress]? {
        return nil
    }
    
    static func makeShortTrip()-> TripFactory{
        return ShortTripFactory()
    }
    static func makeLongTrip()-> TripFactory{
        return LongTripFactory()
    }
}


class ShortTripFactory:TripFactory{
    override func book() -> [Books]? {
        return [Fiction()]
    }
    
    override func gadgets() -> [Gadgets]? {
        return [Mobile()]
    }
    
    override func dress() -> [Dress]? {
        return [Jeans()]
    }
}

class LongTripFactory:TripFactory{
    override func book() -> [Books]? {
        return [Fiction(),NonFiction()]
    }
    
    override func gadgets() -> [Gadgets]? {
        return [Watch(),Mobile()]
    }
    
    override func dress() -> [Dress]? {
        return [Tshirt(),Jeans()]
    }
}
