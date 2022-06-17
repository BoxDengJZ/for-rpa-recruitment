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
        
        var greeting: String{
            greeter.getGreeting()
        }
        
        let type = "\(type(of: greeter))"
        assert("MyGreeter.Client".contains(type), "MyGreeter.Client should be instantiated")
        // Swift 的命名空间，不支持 "MyGreeter.Client" ==  "\(type(of: greeter))"
        
        assert(greeting.count > 0, "greeting should return something with length")
        
        if let date = date(with: "2022-06-17 12:00:00"){
            greeter.testDate = date
            assert(greeting.contains(TimeState.afternoon.rawValue), "greeting should be afternoon")
        }
        if let date = date(with: "2022-06-17 11:59:59"){
            greeter.testDate = date
            assert(greeting.contains(TimeState.morning.rawValue), "greeting should be morning")
        }
        
        if let date = date(with: "2022-06-17 05:59:59"){
            greeter.testDate = date
            assert(greeting.contains(TimeState.evening.rawValue), "greeting should be evening")
        }
        if let date = date(with: "2022-06-17 18:00:00"){
            greeter.testDate = date
            assert(greeting.contains(TimeState.evening.rawValue), "greeting should be evening")
        }
        
        if let date = date(with: "2022-06-18 00:00:00"){
            greeter.testDate = date
            assert(greeting.contains(TimeState.evening.rawValue), "greeting should be evening")
        }
        
        
        
        
        
        
    }

    
    func date(with str: String) -> Date?{
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date = dateFormat.date(from: str) {
            return date
        } else {
            return nil
        }
    }
    
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
