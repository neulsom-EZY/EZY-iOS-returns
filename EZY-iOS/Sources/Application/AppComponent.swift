//
//  AppComponent.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs

class AppComponent : Component<EmptyDependency>, AppRootDependency{
    init(){
        super.init(dependency: EmptyComponent())
    }
}
