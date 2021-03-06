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
        return self.frame.size.width
    }
    
    public var height: CGFloat{
        return self.frame.size.height
    }
    
    public var top: CGFloat{
        return self.frame.origin.y
    }
    
    public var bottom: CGFloat{
        return self.frame.height + self.frame.origin.y
    }
    
    public var left: CGFloat{
        return self.frame.origin.x
    }
    
    public var right: CGFloat{
        return self.frame.width + self.frame.origin.x
    }
    
    
    
    
}
