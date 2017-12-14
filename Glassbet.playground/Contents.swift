//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// 2017-09-04
// ----------
// César trodde att flatMap skulle göra en N-dimensionel
// array till en 1-dimensional array, medan jag trodde att
// den skulle göra om den till en (N-1)-dimensionel array.
let x = [[1, [2], 3], [4, [5], 6], [7, [8], 9]]
print(x.flatMap { $0 })
// Jag hade rätt. Glass till mig!

// 2017-09-28
// ----------
// César tror att om man använder `UIImage.animatedImageNamed(_:duration:)` i en
// UIImageView så måste man kalla `startAnimating()` för att den skall animera bilden.
// Jag tror att den börjar animera automatiskt.
let animatedLoaderImage = UIImage.animatedImageNamed("loader-dark-", duration: 2.0)!
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: animatedLoaderImage.size.width, height: animatedLoaderImage.size.height))
imageView.image = animatedLoaderImage

PlaygroundPage.current.liveView = imageView
// Jag hade rätt. Nu är jag bara skyldig César två glassar! :D

// 2017-11-27
// ----------
// César tror att om man skapar en tom klass så måste man skriva en `private init() {}` för att inte kunna
// instantiera klassen. Jag tror att man inte kan instantiera klassen ändå (i.e. initializern synthetizeras ej).
class Foo {}
let foo = Foo()
// César hade rätt!

// 2017-12-14
// ----------
// César tror att `UIButton.setTitle(_:for:)` alltid animerar titeln. Tim tror att det finns en viss
// `UIButtonType` (förmodligen `UIButtonType.custom`) som stänger gör att titeln inte animeras.
let button = UIButton(type: .custom)
button.setTitle("First title", for: .normal)
button.sizeToFit()

PlaygroundPage.current.liveView = button

DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
	button.setTitle("Second title", for: .normal)
}
// Tim hade rätt!
