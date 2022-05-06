//
//  NickNameSettingSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log
import Base

protocol NickNameSettingSceneViewControllerInput: AnyObject {}

protocol NickNameSettingSceneViewControllerOutput: AnyObject {}

final class NickNameSettingSceneViewController: BaseViewController {
    var interactor: NickNameSettingSceneViewControllerOutput?
    var router: NickNameSettingSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    override func configureUI() {
        super.configureUI()
        
    }
}

// swiftlint:disable colon
extension NickNameSettingSceneViewController:
    NickNameSettingSceneViewControllerInput {}
