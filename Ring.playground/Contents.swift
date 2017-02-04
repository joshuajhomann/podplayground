import PlaygroundSupport
import UIKit


class RingView: UIControl {
    let strokeWidth = CGFloat(12.5)
    var instanceCount = CGFloat(18)
    var proportion: CGFloat = 1
    let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
    let π = CGFloat.pi
    var tapRecognizer: UITapGestureRecognizer!
    lazy var path: CGPath = {
    }()

    lazy var backgroundLayer: CAReplicatorLayer = {
        let backgroundLayer = CAReplicatorLayer()
        return backgroundLayer
    }()

    lazy var shapeLayer: CAShapeLayer = {
        let shapeLayer = CAShapeLayer()
        return shapeLayer
    }()

    override func layoutSubviews() {
    }

    @objc private func tap (tap: UITapGestureRecognizer) {
    }

}
class L : UILabel {
    var control: RingView! {
        didSet {
            control.addTarget(self, action: #selector(update), for: .valueChanged)
        }
    }
    @objc private func update() {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumIntegerDigits = 1
        text = formatter.string(for: control.proportion)
    }
}
//let v = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//let r = RingView(frame: v.frame)
//let l = L(frame: v.frame)
//v.addSubview(r)
//v.addSubview(l)
//l.control = r
//l.textColor = .white
//l.textAlignment = .center
//l.text = "1"
//PlaygroundPage.current.liveView = v