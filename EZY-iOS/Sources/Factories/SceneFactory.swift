//
//  LoginSceneFactory.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import UIKit

protocol SceneFactory {
    var loginConfigurator: LoginSceneConfigurator! { get set }
    var nickNameSettingConfigurator : NickNameSettingSceneConfigurator! {get set}
}

final class DefaultSceneFactory: SceneFactory {
    var loginConfigurator: LoginSceneConfigurator!
    var nickNameSettingConfigurator: NickNameSettingSceneConfigurator!
}

//MARK: - Flow
extension DefaultSceneFactory : SceneAction{

    
    //MARK: - Login
    func makeLoginScene() -> UIViewController {
        return loginConfigurator.configured(AppDelegate.container.resolve(LoginSceneViewController.self)!)
    }
    
    func doNotHaveAcount() -> UIViewController {
        return nickNameSettingConfigurator.configured(AppDelegate.container.resolve(NickNameSettingSceneViewController.self)!)
    }
    
}
