//
//  Property.swift
//  GattineniRealEstateApp
//
//  Created by Manideep Gattineni on 4/4/24.
//

import Foundation


struct property {
    let name: String
    let propertyImage:String
    let address: String
    let price: Double
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    
    static var data:[property]=[
    property(name: "p1", propertyImage: "property1", address: "123trdtfx", price: 500000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    property(name: "p1", propertyImage: "property2", address: "123trdtfx", price: 600000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    property(name: "p1", propertyImage: "property3", address: "123trdtfx", price: 750000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    property(name: "p1", propertyImage: "property4", address: "123trdtfx", price: 800000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    property(name: "p1", propertyImage: "property5", address: "123trdtfx", price: 1100000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    property(name: "p1", propertyImage: "property6", address: "123trdtfx", price: 1500000, numberOfBedrooms: 3, numberOfBathrooms: 2)
    ]
    
    static var first:[property]=[]
    static var second:[property]=[]
    static var third:[property]=[]
    static var Purchased:[property]=[]
    
    static var section = ["50k to 70.50k","70.50k to 100k","over"]
}

