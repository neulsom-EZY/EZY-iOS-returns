//
//  NickNameSettingScenePresenter.swift
//  EZY-iOS
//

import UIKit

typealias NickNameSettingScenePresenterInput = NickNameSettingSceneInteractorOutput
typealias NickNameSettingScenePresenterOutput = NickNameSettingSceneViewControllerInput

final class NickNameSettingScenePresenter {
    weak var viewController: NickNameSettingScenePresenterOutput?
}

// swiftlint:disable colon
extension NickNameSettingScenePresenter:
    NickNameSettingScenePresenterInput {}
