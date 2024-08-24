import UIKit

let heartImage = UIImage(named: "heart.png")
let heartImageView = UIImageView(image: heartImage)
//heartImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)


let fallImage = UIImage(named: "fall.png")
let fallImageView = UIImageView(image: fallImage)

//照片原版
fallImageView.mask = heartImageView


let colorView = UIView(frame: fallImageView.frame)
colorView.backgroundColor = UIColor(red: 0.4, green: 0.2, blue: 0, alpha: 0.5)

let heartImage2 = UIImageView(image: heartImage)
//照片秋意濃加強版
colorView.mask = heartImage2
fallImageView.addSubview(colorView)


let fireImage = UIImage(named: "fire.png")
let fireIamgeView = UIImageView(image: fireImage)
fireIamgeView.alpha = 0.3
fallImageView.addSubview(fireIamgeView)
//以上是照片大合成版


//以下是做圖片漸層
let skyImage = UIImage(named: "sky.png")
let skyImageView = UIImageView(image: skyImage)


let layer = CAGradientLayer()
layer.frame = skyImageView.bounds
layer.colors = [CGColor(red: 1, green: 1, blue: 1, alpha: 0),
                CGColor(red: 1, green: 1, blue: 1, alpha: 1)]


layer.startPoint = CGPoint(x: 0, y: 0)
layer.endPoint = CGPoint(x: 0, y: 1)
skyImageView.layer.mask = layer
skyImageView



//springImageView.frame = diamondIamgeView.frame
//springImageView.addSubview(diamondIamgeView)
//springImageView.alpha = 0.8
//springImageView.mask = heartImageView




