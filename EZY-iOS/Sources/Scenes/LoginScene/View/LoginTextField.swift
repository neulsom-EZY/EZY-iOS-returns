//
//  LoginTextField.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/04.
//

import UIKit
import EZYUI
import Then
import UIUtil

final class LoginTextField : UIView{
    
    //MARK: - Properties
    private let  titleLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        $0.textColor = .EZY_Pupple
    }
    
    private let textField = UITextField().then{
        $0.textColor = .black
        $0.setPlaceholder(color: .lightGray)
    }
    
    private let divider = UIView().then{
        $0.backgroundColor = .EZY_Pupple
    }
    
    //MARK: - initalizer
    init(titleText : String ,placeholder : String?){
        super.init(frame: .zero)
        titleLabel.text = titleText
        textField.placeholder = placeholder
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
        addSubviews(titleLabel,textField,divider)
    }
    
    private func setLayout(){
        titleLabel.snp.makeConstraints {
            $0.top.left.equalToSuperview()
        }
        textField.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(18)
        }
        divider.snp.makeConstraints {
            $0.top.equalTo(textField.snp.bottom).offset(10)
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(2)
        }
    }
}
