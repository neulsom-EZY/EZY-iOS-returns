//
//  RootComponent.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/08.
//

import NeedleFoundation
import UIKit


protocol RootDependency: NeedleFoundation.Dependency {

}

final class RootComponent: NeedleFoundation.Component<RootDependency> , LoginDependency{
    
    var rootViewController: RootViewController {
        return shared { RootViewController() }
    }
    
//    var viewController: LoginViewControllable {
//        return rootViewController
//    }
  
    var interactor: RootInteractor {
        return shared { RootInteractor(presenter: rootViewController) }
    }
    
    var loginComponent : LoginComponent{
        return LoginComponent(parent: self)

    }
}
