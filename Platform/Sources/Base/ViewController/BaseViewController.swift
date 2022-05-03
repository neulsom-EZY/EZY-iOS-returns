//
//  File.swift
//  
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import UIKit
import RxSwift

open class BaseViewController : UIViewController{
    public let bounds = UIScreen.main.bounds
    public var disposeBag : DisposeBag = .init()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgroundIfNotSet()
    }
    
    public init(){
        super.init(nibName: nil, bundle: nil)
        addView()
        configureUI()
        delegate()
        
        bindView()
        bindAction()
        bindState()
    }
    
    @available(*,unavailable)
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        addView()
        configureUI()
        delegate()
        
        bindView()
        bindAction()
        bindState()
    }
    

    //MARK: - Layout
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setLayout()
    }
    
    //MARK: - Default BackgroundColor
    private func setupBackgroundIfNotSet(){
        if self.view.backgroundColor == nil{
            self.view.backgroundColor = .white
        }
    }
    
    //MARK: - Override Point
    open func addView(){}
    open func setLayout(){}
    open func configureUI(){}
    open func delegate() {}
    
    //MARK: - Bind
    open func bindView(){}
    open func bindAction(){}
    open func bindState(){}
}

