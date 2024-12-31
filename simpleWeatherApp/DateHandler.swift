//
//  DateHandler.swift
//  simpleWeatherApp
//
//  Created by Hadia Thaniana on 10/14/22.
//

import Foundation

class DateHandler {
    
    static let stringOffset : Int = 10
    static var todaysDate: String {
        return formatDatestring(date: Date())
    }
    static var tomorrowsDate: String {
        guard let tomorrowDate = Calendar.current.date(byAdding: .day, value: 1, to: Date()) else { return ""}
        return formatDatestring(date: tomorrowDate)
    }
    
    private static func formatDatestring(date: Date) -> String {
        let dateString = String(describing: date)
        let endIndex = dateString.index(dateString.startIndex, offsetBy: self.stringOffset)
        return dateString.substring(to: endIndex)
    }
}
