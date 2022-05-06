//
//  NickNameSettingSceneRouter.swift
//  EZY-iOS
//

import UIKit

protocol NickNameSettingSceneRoutingLogic {}

final class NickNameSettingSceneRouter: NSObject {
    weak var source: UIViewController?
}

// swiftlint:disable colon
extension NickNameSettingSceneRouter:
    NickNameSettingSceneRoutingLogic {}
