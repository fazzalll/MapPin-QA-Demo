import XCTest
@testable import MapPinDemoApp

final class MapPinDemoTests: XCTestCase {
    func testInitialPinCountIsZero() {
        let contentView = ContentView()
        XCTAssertEqual(contentView.annotations.count, 0)
    }

    func testPinCountIncreases() {
        var contentView = ContentView()
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        contentView.annotations.append(pin)
        XCTAssertEqual(contentView.annotations.count, 1)
    }
}
