import XCTest
@testable import resultBuilder

final class resultBuilderTests: XCTestCase {
    func testGenerateImage() throws {
        // Arrange
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("Resources/test.jpeg")
        let rect = Rect(rect: CGRect(x: 10, y: 10, width: 90, height: 50), color: .red)
        // Act
        let data = Factory.jpeg(from: rect)
        try data?.write(to: url)
        // Assert
    }
}
