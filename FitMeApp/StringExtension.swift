//
//  StringExtension.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import Foundation

extension String{
     
    func isValidEmail() -> Bool{
        let regex = try! NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" , options: .caseInsensitive)
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
}
