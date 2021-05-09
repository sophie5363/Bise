//
//  Extensions.swift
//  Bise
//
//  Created by Sophie Jacquot  on 06/03/2021.
//

import Foundation
import UIKit

extension UIView {
    
    public var width: CGFloat{
        return frame.size.width
    }
    
    public var height: CGFloat{
        return frame.size.height
    }
    
    public var top: CGFloat{
        return frame.origin.y
    }
    
    public var bottom: CGFloat{
        return frame.height + frame.origin.y
    }
    
    public var left: CGFloat{
        return frame.origin.x
    }
    
    public var right: CGFloat{
        return frame.width + frame.origin.x
    }
    
}

extension Notification.Name {
    static let didLogInNotification = Notification.Name("didLogInNotification")
}
