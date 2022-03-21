# resultBuilder

This is a small repo to present the @resultBuilder potential in Swift.

This is inspired by :

[https://www.swiftbysundell.com/articles/deep-dive-into-swift-function-builders/]
[https://www.avanderlee.com/swift/result-builders/]

## the problem

Say you want to make a lib that enables you to generate graphics based on rectangles. We iterate on an array to generate every shapes.

```swift
extension ComplexShape: Drawable {
    func generate(in context: UIGraphicsImageRendererContext) {
        drawables.forEach { $0.generate(in: context) }
    }
}

```

This is very easy on paper but it could become quite difficult to write if you think about more complex shapes, especially when it comes to mix different rectangles together. The array can become very difficult to write.

As an example :

```swift
struct ComplexShape {
    private var drawables: [Drawable] {
        var array = [Drawable]()
        array.append(Rect...) //1
        array.append(Rect...)
        if hasBlueRect {
            array.append(Rect...)
        }
        return array
    }
}

```

At **1** we can see that this way of writing can become very painfull.

@resutBuilder is here to solve this kind of thing transforming the writing into this :

```swift
struct ComplexShape {
    @drawableBuilder private var drawables: [Drawable] {
        Rect...
        Rect...
        if hasBlueRect {
            Rect...
        }
    }
}

```

## License
MIT
**Free Software, Hell Yeah!**
