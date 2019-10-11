//
//  Logger.swift
//  BlueCap
//
//  Created by Troy Stribling on 6/8/14.
//  Copyright (c) 2014 Troy Stribling. The MIT License (MIT).
//

import Foundation

public class Logger {
    
    public static var loggingEnabled = false
    
    public class func debug(_ message:String? = nil, function: String = #function, file: String = #file, line: Int = #line) {
        guard loggingEnabled else { return }
        
        if let message = message {
            print("\(file):\(function):\(line): \(message)")
        } else {
            print("\(file):\(function):\(line)")
        }
    }
}
