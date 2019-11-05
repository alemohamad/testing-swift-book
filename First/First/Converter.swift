//
//  Converter.swift
//  First
//
//  Created by Ale Mohamad on 05/11/2019.
//  Copyright © 2019 Ale Mohamad. All rights reserved.
//

import Foundation

struct Converter {
//    func convertToCelsius(fahrenheit: Double) -> Double {
//        return (fahrenheit - 32) * 5 / 9
//    }
    
    func convertToCelsius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
