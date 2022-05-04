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
import UIGradient

protocol LoginSceneViewControllerInput: AnyObject {}

typealias LoginSceneViewControllerOutput
= LoginSceneInteractorInput

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    private let titleView = LoginTitleView()
    
    private let nickNameTextField = UserTextField(titleText: "닉네임",placeholder: "닉네임을 입력해주세요.")
    private let passwordTextField = UserTextField(titleText: "비밀번호",placeholder: "닉네임을 입력해주세요.")
    private let forgetPassword = textButton(title: "비밀번호를 잊으셨나요?",fontSize: 10)
    private let forgetNickName = textButton(title: "닉네임을 잊으셨나요?",fontSize: 10)
    
    private let loginButton = UserCustomButton(placeholder: "로그인")
    private let doNotHaveAccountButton =  textButton(title: "아직 회원이 아니신가요?", fontSize: 12)
    
    //MARK: - Configure
    override func configureUI() {

    }
    //MARK: - AddView
    override func addView() {
        view.addSubviews(titleView, nickNameTextField,passwordTextField,loginButton)
    }
    //MARK: - SetLayout
    override func setLayout() {
        titleView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(bounds.height/6.6)
            $0.left.equalToSuperview().offset(bounds.width/7.98)
        }
        nickNameTextField.snp.makeConstraints {
            $0.top.equalTo(titleView.snp.bottom).offset(bounds.height/4)
            $0.height.equalTo(bounds.height/16.6)
            $0.left.right.equalToSuperview().inset(bounds.width/7.8)
        }
        passwordTextField.snp.makeConstraints{
            $0.top.equalTo(nickNameTextField.snp.bottom).offset(bounds.height/30)
            $0.left.right.equalTo(nickNameTextField)
            $0.height.equalTo(nickNameTextField)
        }
        loginButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(passwordTextField.snp.bottom).offset(bounds.height/30)
            $0.height.equalTo(bounds.height/16.24)
            $0.width.equalTo(bounds.width/1.34)
        }
    }
}


// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {
    
}
