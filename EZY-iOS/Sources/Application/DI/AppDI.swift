import Swinject

extension Container{
    
    func registerDependencies(){
        registerVC()
    }
    
    private func registerVC(){
        self.register(LoginViewController.self){ _ in
            return LoginViewController()
        }

    }

}
