
import UIKit
public enum Factory {
    public static func jpeg(from model: Drawable) -> Data? {
        image(from: model)?.jpegData(compressionQuality: 1)
    }

    static func image(from model: Drawable) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 500, height: 300))
        return renderer.image { context in
            model.generate(in: context)
        }
    }
}
