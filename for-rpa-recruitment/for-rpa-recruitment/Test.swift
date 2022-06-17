//
//  Test.swift
//  test
//
//  Created by Jz D on 2022/6/17.
//

import XCTest



class Test: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {

        var greeter = MyGreeter.Client()
        let type = "\(type(of: greeter))"
        assert("MyGreeter.Client".contains(type), "MyGreeter.Client should be instantiated")
        // Swift 的命名空间，不支持 "MyGreeter.Client" ==  "\(type(of: greeter))"
        
        let greeting = greeter.getGreeting()
        assert(greeting.count > 0, "greeting should return something with length")
        
        
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
