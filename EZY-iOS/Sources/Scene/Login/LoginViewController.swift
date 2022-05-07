//
//  LoginViewController.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs
import RxSwift
import UIKit

protocol LoginPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoginViewController: UIViewController, LoginPresentable, LoginViewControllable {

    weak var listener: LoginPresentableListener?
    
    init() {
      super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
}

extension LoginViewController : RootViewControllable {}
