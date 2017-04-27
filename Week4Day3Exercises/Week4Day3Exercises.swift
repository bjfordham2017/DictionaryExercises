//
//  Week4Day3Exercises.swift
//  Week4Day3Exercises
//
//  Created by Brent Fordham on 4/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

func mapBully(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"] {
        output["b"] = aValue
        output["a"] = ""
    }
    return output
}

func mapShare(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"] {
        output["b"] = aValue
    }
    output.removeValue(forKey: "c")
    return output
}

func mapAB(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"],
        let bValue = input["b"] {
        output["ab"] = aValue + bValue
    }
    return output
}

func toppings(input: [String: String]) -> [String: String] {
    var output = input
    if let _ = input["ice cream"] {
        output["ice cream"] = "cherry"
    }
    output["bread"] = "butter"
    return output
}

func toppings2(input: [String: String]) -> [String: String] {
    var output = input
    if let iceCreamValue = input["ice cream"] {
        output["yogurt"] = iceCreamValue
    }
    if let _ = input["spinach"] {
        output["spinach"] = "nuts"
    }
    return output
}

func toppings3(input: [String: String]) -> [String: String] {
    var output = input
    if let potatoValue = input["potato"] {
        output["fries"] = potatoValue
    }
    if let saladValue = input["salad"] {
        output["spinach"] = saladValue
    }
    return output
}

func mapAB2(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"],
    let bValue = input["b"],
        aValue == bValue {
        output.removeValue(forKey: "a");
        output.removeValue(forKey: "b")
    }
    return output
}

func mapAB3(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"],
        input["b"] == nil {
        output["b"] = aValue
    } else if let bValue = input["b"],
        input["a"] == nil {
        output["a"] = bValue
    }
    return output
}

func mapAB4(input: [String: String]) -> [String: String] {
    var output = input
    if let aValue = input["a"],
        let bValue = input["b"] {
        if aValue.characters.count == bValue.characters.count {
            output["a"] = "";
            output["b"] = ""
        } else if aValue.characters.count > bValue.characters.count {
            output["c"] = aValue
        } else {
            output["c"] = bValue
        }
    }
    return output
}

func word0(input: [String]) -> [String: Int] {
    var output: [String: Int] = [:]
    for element in input {
        output[element] = 0
    }
    return output
}

func wordLen(input: [String]) -> [String: Int] {
    var output: [String: Int] = [:]
    for element in input {
        output[element] = element.characters.count
    }
    return output
}

func pairs(input: [String]) -> [Character: Character] {
    var output: [Character: Character] = [:]
    for element in input {
        output[element.characters.first!] = element.characters.last
    }
    return output
}

func wordCount(input: [String]) -> [String: Int] {
    var output: [String: Int] = [:]
    for element in input {
        if output[element] == nil {
            output[element] = 1
        } else {
            output[element] = output[element]! + 1
        }
    }
    return output
}

func firstChar(input: [String]) -> [Character: String] {
    var output: [Character: String] = [:]
    for element in input {
        if output[element.characters.first!] == nil {
            output[element.characters.first!] = element
        } else {
            output[element.characters.first!] = output[element.characters.first!]! + element
        }
    }
    return output
}

func wordAppend(input: [String]) -> String {
    var dictionary: [String: Int] = [:]
    var output = ""
    for element in input {
        if dictionary[element] == nil {
            dictionary[element] = 1
        } else {
            dictionary[element] = dictionary[element]! + 1;
            if dictionary[element]! % 2 == 0 {
                output += element
            }
        }
    }
    return output
}

func wordMultiple(input: [String]) -> [String: Bool] {
    var output: [String: Bool] = [:]
    for element in input {
        if output[element] == nil {
            output[element] = false
        } else {
            output[element] = true
        }
    }
    return output
}

