import Swinject

extension Container{
    
    func registerDependencies(){
        registerVC()
    }
    
    private func registerVC(){
        self.register(LoginSceneViewController.self){ _ in
            return LoginSceneViewController()
        }
    }
    
}
