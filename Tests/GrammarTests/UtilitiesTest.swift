//
//  UtilitiesTest.swift
//  GrammarTests
//
//  Created by Palle Klewitz on 11.08.17.
//

import Foundation
import XCTest
@testable import Grammar

class StringUtilitiesTest: XCTestCase {
	
	func testPrefix() {
		let testedString = "hello, world"
		
		XCTAssertEqual(testedString.rangeOfPrefix(["world"], from: testedString.startIndex), testedString.range(of: "world"))
		XCTAssertEqual(testedString.rangeOfPrefix(["world"], from: testedString.index(of: "w")!), testedString.range(of: "world"))
		XCTAssertNotEqual(testedString.rangeOfPrefix(["world"], from: testedString.index(testedString.startIndex, offsetBy: 8)), testedString.range(of: "world"))
		
		XCTAssertFalse(testedString.hasPrefix(["world"], from: testedString.startIndex))
		print(testedString[testedString.index(of: "w")!...])
		XCTAssertTrue(testedString.hasPrefix(["world"], from: testedString.index(of: "w")!))
		XCTAssertFalse(testedString.hasPrefix(["world"], from: testedString.index(testedString.startIndex, offsetBy: 8)))
	}
	
}