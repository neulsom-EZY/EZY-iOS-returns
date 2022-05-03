//
//  LoginSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log
import Base
import RxSwift
import Then
import SnapKit

protocol LoginSceneViewControllerInput: AnyObject {}

typealias LoginSceneViewControllerOutput
    = LoginSceneInteractorInput

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    private let titleView = LoginTitleView()
    
    //MARK: - Configure
    override func configureUI() {

    }
    //MARK: - AddView
    override func addView() {
        view.addSubviews(titleView)
    }
    //MARK: - SetLayout
    override func setLayout() {
        titleView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(self.view.frame.height/6.6)
            $0.left.equalToSuperview().offset(self.view.frame.width/7.98)
        }
    }
}


// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {
    
}
