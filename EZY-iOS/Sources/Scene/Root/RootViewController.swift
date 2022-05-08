//
//  RootViewController.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/08.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class RootViewController: UIViewController, RootPresentable, RootViewControllable {
    func setViewController(viewController: ViewControllable) {
        self.navigationController?.setViewControllers([viewController.uiviewController], animated: true)
    }
    

    weak var listener: RootPresentableListener?
}
