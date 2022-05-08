//
//  LoginViewController.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs
import RxSwift
import UIKit
import Base

protocol LoginPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoginViewController: BaseViewController, LoginPresentable, LoginViewControllable {

    weak var listener: LoginPresentableListener?
    

    
}

extension LoginViewController : RootViewControllable {}
