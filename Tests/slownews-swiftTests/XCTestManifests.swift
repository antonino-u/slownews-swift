import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(slownews_swiftTests.allTests),
    ]
}
#endif
