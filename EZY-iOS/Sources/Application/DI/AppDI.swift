import Swinject

extension Container{
    
    func registerDependencies(){
        registerVC()
    }
    
    private func registerVC(){
        self.register(LoginSceneViewController.self){ r in
            return LoginSceneViewController()
        }
    }

}
