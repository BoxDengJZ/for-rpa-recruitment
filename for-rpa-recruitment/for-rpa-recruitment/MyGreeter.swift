//
//  MyGreeter.swift
//  for-rpa-recruitment
//
//  Created by Jz D on 2022/6/17.
//

import Foundation



enum TimeState: String{
    case morning
    case afternoon
    case evening
}

class MyGreeter{
    class Client{
        @discardableResult
        func getGreeting() -> String{
            let date = Date()
            let moment = date.getFormattedDate(format: "HH")
            var now = TimeState.evening
            if let hour = Int(moment){
                switch hour{
                case 6...11:
                    now = .morning
                case 12...17:
                    now = .afternoon
                default:()
                }
            }
            let result = "Good " + now.rawValue
            print(result)
            return result
        }
    
    }
}





extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}


