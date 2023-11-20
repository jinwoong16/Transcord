//
//  DateFormatter+.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation

extension DateFormatter {
    static func pwFormatter(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd_HH:mm:ss"
        return dateFormatter.string(from: date)
    }
}
