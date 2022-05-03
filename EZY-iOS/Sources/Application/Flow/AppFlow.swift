//
//  AppFlow.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import RxFlow
import RxRelay
import RxSwift
import UIKit

struct AppStepper : Stepper{
    let steps: PublishRelay<Step> = .init()
    private let disposeBag : DisposeBag = .init()
    
    
}

final class AppFlow : Flow{

    
    
    // MARK: - Properties
    var root: Presentable{
        return self.rootVC
    }
    
    private lazy var rootVC: UIViewController = {
        let launchScreenStoryboard = UIStoryboard(name: "LaunchScreen", bundle: nil)
        let launchScreen = launchScreenStoryboard.instantiateViewController(withIdentifier: "LaunchScreen")
        return launchScreen
    }()
    
    // MARK: - Init
    deinit{
        print("\(type(of: self)): \(#function)")
    }
    
    //MARK: - Navigation
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step.asEZYStep else {return .none}
        switch step {
        case .loginIsRequired:
            return .none
        default:
            return .none
        }
    }
}

//MARK: - Method
private extension AppFlow{

}
