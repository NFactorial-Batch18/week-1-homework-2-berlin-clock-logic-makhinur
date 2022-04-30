//
//  main.swift
//  BerlinClock
//
//  Created by Makhinur Talgatova on 29.04.2022.
//

import Foundation

var hoursArray = [Int]()
var minutesArray = [Int]()
var secondsArray = [Int]()

func createArray(_ valueToAdd: Int, _ frequency: Int) -> Array<Int> {
    return Array(repeating: valueToAdd, count: frequency)
}

print("Insert hours:")
if let hours = Int(readLine() ?? "") {
    hoursArray = createArray(1, hours/5) + createArray(0, 4 - hours/5) + createArray(1, hours%5) + createArray(0, 4 - hours%5)
} else {
    hoursArray = createArray(0, 8)
}

print("Insert minutes:")
if let minutes = Int(readLine() ?? "") {
    minutesArray = createArray(1, minutes/5) + createArray(0, 11 - minutes/5) + createArray(1, minutes%5) + createArray(0, 4 - minutes%5)
} else {
    minutesArray = createArray(0, 15)
}

print("Insert seconds:")
if let seconds = Int(readLine() ?? "") {
    if(seconds%2 == 0) {
        secondsArray = createArray(0, 1)
    } else {
        secondsArray = createArray(1, 1)
    }
} else {
    secondsArray = createArray(0, 1)
}

var berlinClockArray = secondsArray + hoursArray + minutesArray

print(berlinClockArray)
