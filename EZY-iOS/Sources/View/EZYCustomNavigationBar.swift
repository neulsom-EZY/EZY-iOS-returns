//
//  EZYCustomNavigationBar.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import UIKit
import Then
import SnapKit
import RxSwift
import RxCocoa

protocol backBtnAction : AnyObject{
    func backAction()
}

final class EZYCustomNavigationBar : UIView{

    weak var delegate : backBtnAction?
    
    private var disposeBag : DisposeBag = .init()

    
    //MARK: - Properties
    private let backButton = UIButton().then{
        $0.setImage(UIImage(named: "back_arrow"), for: .normal)
        $0.tintColor = .black
    }
    private let logoImageView = UIImageView(image: UIImage(named: "EZY_LOGO")).then{
        $0.contentMode = .scaleAspectFit
    }
    
    //MARK: - Initalizer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        bindView()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
        bindView()
    }
    
    private func setup(){
        addSubviews(backButton, logoImageView)
        
        //MARK: - Layout
        backButton.snp.makeConstraints{
            $0.left.height.centerY.equalToSuperview()
            $0.width.equalTo(snp.height)
        }
        
        logoImageView.snp.makeConstraints{
            $0.center.height.equalToSuperview()
            $0.width.equalTo(84)
        }
    }
    
    private func bindView(){
        backButton.rx.tap
            .subscribe(onNext:{ [weak self] in
                self?.delegate?.backAction()
            }).disposed(by: disposeBag)
    }
}
