//
//  UserTextField.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit
import EZYUI
import Then
import UIUtil

final class UserTextField : UITextField{
    
    //MARK: - Properties
    private let  titleLabel = UILabel().then {
        $0.textColor = .EZY_Pupple
    }
    
    private let divider = UIView().then{
        $0.backgroundColor = .EZY_Pupple
    }
    
    //MARK: - initalizer
    init(
        titleText : String ,
        titleFont : CGFloat = 10,
        placeholder : String?
    ){
        super.init(frame: .zero)
        titleLabel.text = titleText
        titleLabel.font = UIFont.systemFont(ofSize: titleFont, weight: .semibold)
        self.placeholder = placeholder
        self.textColor = .black
        self.font = .systemFont(ofSize: 14, weight: .regular)
        self.setPlaceholder(color: .lightGray)
        addView()
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setLayout()
    }
    
    //MARK: - Method
    private func addView(){
        addSubviews(titleLabel,divider)
    }
    
    private func setLayout(){
        titleLabel.snp.makeConstraints {
            $0.top.left.equalToSuperview()
        }
        divider.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(2)
        }
    }
}
