import CoreLocation
import NeedleFoundation
import RIBs

private let needleDependenciesHash : String? = nil

//MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope{
    return component.parent
}

private func parent2(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope{
    return component.parent.parent
}

private func parent3(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope{
    return component.parent.parent.parent
}

private class LoginDependencyProvider: LoginDependency{
    var loginViewController: LoginPresentable & LoginViewControllable & RootViewControllable{
        return rootComponent.loginViewController
    }
    
    
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}

//MARK: - RootDepedencyProvider
private class RootDependencyProvider: RootDependency {

    init() {

    }
}
///^->AppComponent->RootComponent->LoginComponent
private func factoryRootLoginDependencyProvider(_ component : NeedleFoundation.Scope) -> AnyObject{
    return LoginDependencyProvider(rootComponent: parent1(component) as! RootComponent)
}

///^->AppComponent->RootComponent
private func factoryRootDependencyProvider(_ component : NeedleFoundation.Scope) -> AnyObject{
    return RootDependencyProvider()
}
///^->AppComponent
private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

private func register1(){
    registerProviderFactory("^->AppComponent->RootComponent->LoginComponent", factoryRootLoginDependencyProvider)
    registerProviderFactory("^->AppComponent->RootComponent", factoryRootDependencyProvider)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
}

public func registerProviderFactories() {
    register1()
}
