//
//  ViewController.swift
//  HitTest
//
//  Created by 이준복 on 6/11/24.
//

import UIKit

extension UIWindow {
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print(String(describing: type(of: self)), #function)
        
        let hitView = super.hitTest(point, with: event)
        
        if hitView == self {
            print(String(describing: type(of: self)), "hit")
        }
        
        return hitView
    }
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class View: UIView {
    
//    func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
//        if !isUserInteractionEnabled || isHidden || alpha <= 0.01 {
//            return nil
//        }
//        if self.point(inside: point, with: event) {
//            for subview in subviews.reversed() {
//                let convertedPoint = subview.convert(point, from: self)
//                if let hitView = subview.hitTest(convertedPoint, with: event) {
//                    return hitView
//                }
//            }
//            return self
//        }
//        return nil
//    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print(String(describing: type(of: self)), #function)
        
        let hitView = super.hitTest(point, with: event)
        
        if hitView == self {
            print(String(describing: type(of: self)), "hit")
        }
        
        return hitView
    }

}

final class MainView: View { }
final class ViewA: View {}
final class ViewA1: View {}
final class ViewA2: View {}

final class ViewB: View {}
final class ViewB1: View {}
final class ViewB2: View {}

final class ViewC: View {}
final class ViewC1: View {}
final class ViewC2: View {}



