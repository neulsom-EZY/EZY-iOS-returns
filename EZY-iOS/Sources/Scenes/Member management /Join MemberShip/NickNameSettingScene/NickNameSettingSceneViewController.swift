//
//  NickNameSettingSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log
import Base

protocol NickNameSettingSceneViewControllerInput: AnyObject {}

protocol NickNameSettingSceneViewControllerOutput: AnyObject {}

final class NickNameSettingSceneViewController: BaseViewController,backBtnAction {

    
    var interactor: NickNameSettingSceneViewControllerOutput?
    var router: NickNameSettingSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    private let customNavigationBar = EZYCustomNavigationBar()
    
    
    override func configureUI() {
        super.configureUI()
        
    }
    override func delegate() {
        customNavigationBar.delegate = self
    }
    override func addView() {
        view.addSubviews(customNavigationBar)
    }
    override func setLayout() {
        customNavigationBar.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(bounds.height/24.6)
            $0.left.right.equalToSuperview().inset(bounds.width/9.14)
            $0.height.equalTo(bounds.height/20)
        }
    }
    func backAction() {
        router?.backButtonDidTap()
    }

    override func bindView() {
        
    }
    override func bindAction() {
        
    }
}

// swiftlint:disable colon
extension NickNameSettingSceneViewController:
    NickNameSettingSceneViewControllerInput {
    
}
