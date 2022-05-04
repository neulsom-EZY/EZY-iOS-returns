//
//  UserCustomButton.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit
import UIGradient

final class UserCustomButton : UIButton{
    
    init(placeholder  : String){
        super.init(frame: .zero)
        titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        setTitle(placeholder, for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.fromGradientWithDirection(.leftToRight, frame: self.bounds, colors: [.EZY_Pupple,.EZY_DeepBlue,.EZY_SkyBlue])
        alpha = 0.5
    }
}
