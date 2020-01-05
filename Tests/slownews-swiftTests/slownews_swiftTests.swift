import XCTest
@testable import slownews_swift

final class slownews_swiftTests: XCTestCase {
    
    func testNewsSources() {

        let expectation = XCTestExpectation()
        self.test(endpoint: Endpoints.newsSources()) { _ in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testEditions() {

        let expectation = XCTestExpectation()
        self.test(endpoint: Endpoints.compactEditions()) { _ in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }

    func testEditionWithDate() {

        let expectation = XCTestExpectation()
        self.test(endpoint: Endpoints.editionWithDate(date: Date())) { _ in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testFirstEdition() {

        let expectation = XCTestExpectation()
        self.test(endpoint: Endpoints.compactEditions()){ [weak self] page in
            let compactEdition = page.compactEditions.first
            XCTAssertNotNil(compactEdition)
            self?.test(endpoint: Endpoints.editionWithId(id: compactEdition!.id), completion: { (fullEdition) in
                XCTAssertEqual(compactEdition!.id, fullEdition.id)
                expectation.fulfill()
            })
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    private func test<T: Endpoint>(endpoint: T, completion: @escaping (T.Model) -> Void) {
        
        Networking.get(endpoint: endpoint) { (result) in
            
            switch result {
                
            case .success(let model):
                XCTAssertTrue(true)
                completion(model)
            case .failure(_):
                XCTFail()
            }
        }
    }
}
