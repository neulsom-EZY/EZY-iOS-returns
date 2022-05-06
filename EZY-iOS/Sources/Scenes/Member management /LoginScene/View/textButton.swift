//
//  textButton.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit

final class textButton : UIButton{
    
    init(title : String,fontSize : CGFloat){
        super.init(frame: .zero)
        titleLabel?.font = .systemFont(ofSize: fontSize, weight: .semibold)
        setTitle(title, for: .normal)
        setTitleColor(.lightGray, for: .normal)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
