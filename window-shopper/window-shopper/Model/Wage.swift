//
//  Wage.swift
//  window-shopper
//
//  Created by ME-MAC on 1/25/23.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
