//
//  File.swift
//  
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit

public extension UITextField {
    func setPlaceholder(color: UIColor) {
        guard let string = self.placeholder else {
            return
        }
        attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: color])
    }
}
