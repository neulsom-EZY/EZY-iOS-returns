import Reusable
import UIKit
import RxSwift

open class BaseCollectionViewCell<T>: UICollectionViewCell, Reusable {
    public let bound = UIScreen.main.bounds
    
    public var disposeBag: DisposeBag = .init()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setLayout()
        configureCell()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addView()
        configureCell()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        setLayoutSubviews()
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
    
    open func addView(){}
    open func setLayout(){}
    open func setLayoutSubviews(){}
    open func configureCell(){}
    
    
    public var model: T? {
        didSet { if let model = model { bind(model) } }
    }
    
    open func bind(_ model: T){}
}
