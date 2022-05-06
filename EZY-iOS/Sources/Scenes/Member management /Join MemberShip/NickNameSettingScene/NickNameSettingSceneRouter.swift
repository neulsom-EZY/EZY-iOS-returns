//
//  NickNameSettingSceneRouter.swift
//  EZY-iOS
//

import UIKit

protocol NickNameSettingSceneRoutingLogic {
    func backButtonDidTap()
}

final class NickNameSettingSceneRouter: NSObject {
    weak var source: UIViewController?

}

// swiftlint:disable colon
extension NickNameSettingSceneRouter:
    NickNameSettingSceneRoutingLogic {
    func backButtonDidTap() {
        print("action")
        source?.navigationController?.popViewController(animated: true)
    }
}
