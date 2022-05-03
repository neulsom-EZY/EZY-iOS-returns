//  LoginTitleView.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import UIKit
import UIUtil
import SnapKit
import EZYUI

final class LoginTitleView : UIView{
    //MARK: - Properties
    private lazy var titleLabel = UILabel().then {
        $0.text = "EZY"
        $0.font = .boldSystemFont(ofSize: 38)
        $0.updateGradientTextColor_vertical(gradientColors: [UIColor.EZY_Pupple,UIColor.EZY_SkyBlue])
    }
    
    private let subLabel = UILabel().then {
        $0.text = "는"
        $0.font = .systemFont(ofSize: 25, weight: .thin)
        $0.textColor = UIColor.black
    }
    
    private let textLabel = UILabel().then {
        $0.text = "자신만의 라이프스타일\n역사를 쓰고 있습니다."
        $0.numberOfLines = 2
        $0.font = .systemFont(ofSize: 25, weight: .thin)
        $0.textColor = UIColor.black
    }
    
    //MARK: - initalizer
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addView()
    }
    
    //MARK: - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        setLayout()
    }
    
    //MARK: - Method
    private func addView(){
        addSubviews(titleLabel,subLabel,textLabel)
    }
    private func setLayout(){
        titleLabel.snp.makeConstraints {
            $0.top.left.equalToSuperview()
        }
        subLabel.snp.makeConstraints{
            $0.bottom.equalTo(titleLabel)
            $0.left.equalTo(titleLabel.snp.right)
        }
        textLabel.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom)
        }
    }
}
