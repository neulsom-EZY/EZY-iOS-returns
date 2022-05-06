//
//  LoginSceneFactory.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import UIKit

protocol LoginSceneFactory {
    var configurator: LoginSceneConfigurator! { get set }
    
    func makeLoginScene() -> UIViewController
    
    func doNotHaveAcount() -> UIViewController
}

final class DefaultLoginSceneFactory: LoginSceneFactory {
    var configurator: LoginSceneConfigurator!
    
    func makeLoginScene() -> UIViewController {
        let vc = AppDelegate.container.resolve(LoginSceneViewController.self)!
        return configurator.configured(vc)
    }
    
    func doNotHaveAcount() -> UIViewController {
        return AppDelegate.container.resolve(NickNameSettingSceneViewController.self)!
    }
}
