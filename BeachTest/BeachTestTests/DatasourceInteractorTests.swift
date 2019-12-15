//
//  DatasourceInteractorTests.swift
//  BeachTestTests
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import XCTest
@testable import BeachTest

class DatasourceInteractorTests: XCTestCase {
    
    var dsInteractor: DatasourceInteractor!
    
    let testURLSchema = DatasourceURLSchema(flightsURLString:"http://pastebin.com/raw/bFnZQEx0" , hotelsURLString: "http://pastebin.com/raw/f0Tm6bfy")

    override func setUp() {
        dsInteractor = DatasourceInteractorImpl(urlSchema: testURLSchema)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInitDatasource() {
        
        let expectation = XCTestExpectation(description: "Download files")
        
        dsInteractor.initialiseDataSource { (success, nil) in
            
            guard success else {
                XCTFail()
                return
            }
            
            //get file names from UrL
            let filename1 = URL(fileURLWithPath: testURLSchema.flightsURLString).lastPathComponent
            let filename2 = URL(fileURLWithPath: testURLSchema.hotelsURLString).lastPathComponent
            
            //check if the created files exist
            let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
            let url = NSURL(fileURLWithPath: path)
            guard let pathComponent1 = url.appendingPathComponent(filename1),
                let pathComponent2 = url.appendingPathComponent(filename2) else {
                    XCTFail()
                    return
            }
            let filePath1 = pathComponent1.path
            let filePath2 = pathComponent2.path
            let fileManager = FileManager.default
            XCTAssertTrue(fileManager.fileExists(atPath: filePath1))
            XCTAssertTrue(fileManager.fileExists(atPath: filePath2))
        }
        
        wait(for: [expectation], timeout: 4.0)
    }

    func testGetFlights () {
        let expectation = XCTestExpectation(description: "get flights")
        
        dsInteractor.getItemList ({ (flights: [Flight], nil) in
            XCTAssertTrue(flights.count > 0)
        })
        
        wait(for: [expectation], timeout: 4.0)
    }

}
