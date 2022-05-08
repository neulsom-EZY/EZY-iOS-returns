//
//  AppComponent.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs
import NeedleFoundation

class AppComponent: BootstrapComponent , RootDependency {
    var rootComponent : RootComponent{
        RootComponent(parent: self)
    }
}
