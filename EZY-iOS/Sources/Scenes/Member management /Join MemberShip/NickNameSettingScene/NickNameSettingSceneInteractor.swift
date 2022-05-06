//
//  NickNameSettingSceneInteractor.swift
//  EZY-iOS
//

import Foundation

typealias NickNameSettingSceneInteractorInput = NickNameSettingSceneViewControllerOutput

protocol NickNameSettingSceneInteractorOutput: AnyObject {}

final class NickNameSettingSceneInteractor {
    var presenter: NickNameSettingScenePresenterInput?
    var worker : NickNameSettingSceneLogic?
}

// swiftlint:disable colon
extension NickNameSettingSceneInteractor:
    NickNameSettingSceneInteractorInput {}
