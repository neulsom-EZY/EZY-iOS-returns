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
import TextFieldEffects

protocol LoginSceneViewControllerInput: AnyObject {}

typealias LoginSceneViewControllerOutput
= LoginSceneInteractorInput

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    private let titleView = LoginTitleView()
    
    private let nickNameTextField = HoshiTextField(frame: .zero).then{
        $0.placeholderColor = .EZY_Pupple
    }
    //MARK: - Configure
    override func configureUI() {
        
    }
    //MARK: - AddView
    override func addView() {
        view.addSubviews(titleView, nickNameTextField)
    }
    //MARK: - SetLayout
    override func setLayout() {
        titleView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(bounds.height/6.6)
            $0.left.equalToSuperview().offset(bounds.width/7.98)
        }
        nickNameTextField.snp.makeConstraints {
            $0.top.equalTo(titleView.snp.bottom)
            $0.centerX.equalToSuperview()
            $0.height.equalToSuperview()
            $0.width.equalTo(30)
        }
    }
}


// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {
    
}
