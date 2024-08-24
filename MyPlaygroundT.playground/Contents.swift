import UIKit

let springImage = UIImage(named: "spring.png")
let springImageView = UIImageView(image: springImage)


let layer = CAGradientLayer()
layer.frame = springImageView.bounds
layer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]



layer.startPoint = CGPoint(x: 0, y: 0)
layer.endPoint = CGPoint(x: 0, y: 1)
springImageView.layer.mask = layer
springImageView

