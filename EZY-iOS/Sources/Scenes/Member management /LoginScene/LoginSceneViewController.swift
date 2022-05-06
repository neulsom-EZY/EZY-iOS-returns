//
//  LoginSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log
import Base
import RxSwift
import RxCocoa
import RxRelay
import Then
import SnapKit
import UIGradient

protocol LoginSceneViewControllerInput: AnyObject {
    func showLoginSuccess()
    func doNotHaveAccount()
}

protocol LoginSceneViewControllerOutput: AnyObject {
    var nickNameTextRelay : BehaviorRelay<String> { get }
    var pwTextRelay : BehaviorRelay<String> { get }
    func isValid() -> Observable<Bool>
    func tryToLogin()
    func doNotHaveAccount()
}

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    private let titleView = LoginTitleView()
    private let nickNameTextField = UserTextField(titleText: "닉네임",placeholder: "닉네임을 입력해주세요.")
    private let passwordTextField = UserTextField(titleText: "비밀번호",placeholder: "비밀번호를 입력해주세요.")
    private let forgetPassword = textButton(title: "비밀번호를 잊으셨나요?",fontSize: 10)
    private let forgetNickName = textButton(title: "닉네임을 잊으셨나요?",fontSize: 10)
    private let loginButton = UserCustomButton(placeholder: "로그인")
    private let doNotHaveAccountButton =  textButton(title: "아직 회원이 아니신가요?", fontSize: 12)
    private let passwordHideButton = UIButton().then{
        $0.setImage(UIImage(systemName: "eye"), for: .normal)
        $0.tintColor = .lightGray
    }
       
    //MARK: - AddView
    override func addView() {
        view.addSubviews(titleView, nickNameTextField,passwordTextField,passwordHideButton,forgetPassword,forgetNickName,loginButton,doNotHaveAccountButton)
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
        passwordHideButton.snp.makeConstraints{
            $0.bottom.equalTo(passwordTextField).inset(10)
            $0.right.equalTo(passwordTextField.snp.right)
        }
        forgetPassword.snp.makeConstraints {
            $0.left.equalTo(passwordTextField)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(bounds.height/90.2)
        }
        forgetNickName.snp.makeConstraints{
            $0.right.equalTo(passwordTextField)
            $0.top.equalTo(forgetPassword)
        }
        loginButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(forgetPassword.snp.bottom).offset(bounds.height/30)
            $0.height.equalTo(bounds.height/16.24)
            $0.width.equalTo(bounds.width/1.34)
        }
        doNotHaveAccountButton.snp.makeConstraints{
            $0.bottom.equalToSuperview().inset(bounds.height/12.8)
            $0.centerX.equalToSuperview()
        }
    }
    override func bindView() {
        nickNameTextField.rx.text
            .orEmpty
            .bind(to: interactor?.nickNameTextRelay ?? BehaviorRelay<String>(value: ""))
            .disposed(by: disposeBag)
        passwordTextField.rx.text
            .orEmpty
            .bind(to: interactor?.nickNameTextRelay ?? BehaviorRelay<String>(value: ""))
            .disposed(by: disposeBag)
    }
    override func bindAction() {
        loginButton.rx.tap
            .subscribe(onNext:{
                self.router?.showLoginSuccess()
            }).disposed(by: disposeBag)
        
        doNotHaveAccountButton.rx.tap.observe(on: MainScheduler.instance)
            .subscribe(onNext:{
                self.router?.doNotHaveAcount()
            }).disposed(by: disposeBag)
    }
    override func bindState() {
        interactor?.isValid()
            .bind(to: loginButton.rx.isEnabled)
            .disposed(by: disposeBag)
    }
    
}

// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {
    func doNotHaveAccount() {
        logger.info("logged : doNotHavAcount")
        router?.doNotHaveAcount()
    }
    
    func showLoginSuccess() {
        logger.info("logged : LoginSuccess")
        router?.showLoginSuccess()
    }
}
