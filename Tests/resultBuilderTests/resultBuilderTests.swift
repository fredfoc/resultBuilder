@testable import resultBuilder
import XCTest

final class resultBuilderTests: XCTestCase {
    func testGenerateSimpleRect() throws {
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

    func testGenerateComplexShape() throws {
        // Arrange
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("Resources/test1.jpeg")
        let complexShape = ComplexShape()
        // Act
        let data = Factory.jpeg(from: complexShape)
        try data?.write(to: url)
        // Assert
    }

    func testGenerateComplexShapeNoYellowRect() throws {
        // Arrange
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("Resources/test2.jpeg")
        let complexShape = ComplexShape(hasYellowRect: false)
        // Act
        let data = Factory.jpeg(from: complexShape)
        try data?.write(to: url)
        // Assert
    }

    func testGenerateJoliShape() throws {
        // Arrange
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("Resources/test3.jpeg")
        let shape = JoliShape {
            Rect(rect: CGRect(x: 10, y: 10, width: 90, height: 50), color: .red)
            Rect(rect: CGRect(x: 110, y: 10, width: 90, height: 50), color: .blue)
        }
        // Act
        let data = Factory.jpeg(from: shape)
        try data?.write(to: url)
        // Assert
    }
}
