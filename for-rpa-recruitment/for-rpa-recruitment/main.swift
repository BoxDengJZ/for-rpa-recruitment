//
//  main.swift
//  for-rpa-recruitment
//
//  Created by Jz D on 2022/6/17.
//

import Foundation


var greeter = MyGreeter.Client()
print("\(type(of: greeter))")
greeter.getGreeting()
