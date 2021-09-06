//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Johan Sandström on 2021-09-06.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackForMemoryLeak(_ instance: AnyObject,
                                    file: StaticString = #filePath,
                                    line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak", file: file, line: line)
        }
    }
}
