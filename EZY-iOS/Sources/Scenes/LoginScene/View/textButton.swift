//
//  textButton.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit

final class textButton : UIButton{
    
    init(title : String){
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
