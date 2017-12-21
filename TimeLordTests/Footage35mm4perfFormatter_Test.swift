//
//  Footage35mm4perfFormatter_Test.swift
//  TimeLordTests
//
//  Created by Jamie Hardt on 12/20/17.
//

import XCTest
import CoreMedia
import AVFoundation

@testable import TimeLord

class Footage35mm4perfFormatter_Test: XCTestCase {

    func testFromString() {
        let f = Footage35mm4perfFormatter()
        
        let t1 = NSValue(time: CMTime(value: 34, timescale: 24) )
        let r1 = f.string(for: t1)
        XCTAssertEqual(r1, "2+02")
        
        let t2 = NSValue(time: CMTime(value: 1440, timescale: 24) )
        let r2 = f.string(for: t2)
        XCTAssertEqual(r2, "90+00")
    }



}
