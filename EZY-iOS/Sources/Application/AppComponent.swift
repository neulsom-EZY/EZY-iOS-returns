//
//  AppComponent.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import NeedleFoundation

final class AppComponent: BootstrapComponent, RootDependency {
    var rootBuilder : RootBuildable{
        RootBuilder{
            RootComponent(parent: self)
        }
    }
}
