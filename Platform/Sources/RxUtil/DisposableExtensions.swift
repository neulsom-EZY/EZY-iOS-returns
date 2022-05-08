//
//  File.swift
//  
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RxSwift

public extension Disposable{
    func disposed(by disposables: CompositeDisposable) {
        _ = disposables.insert(self)
    }
}
