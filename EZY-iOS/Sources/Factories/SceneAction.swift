//
//  SceneAction.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import UIKit

protocol SceneAction {
    func makeLoginScene() -> UIViewController
    func doNotHaveAcount() -> UIViewController
}
