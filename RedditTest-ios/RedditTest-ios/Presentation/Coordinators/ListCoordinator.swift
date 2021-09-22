//
//  ListCoordinator.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import UIKit

class ListCoordinator: BaseCoordinator {
        
    var flow: CoordinatorFlow = .none
    
    var navigation: UINavigationController
    
    var controller: BaseViewController
    
    var previous: BaseCoordinator?
    
    var next: BaseCoordinator?
    
    init(navigation: UINavigationController, controller: BaseViewController) {
        self.controller = controller
        self.navigation = navigation
        self.flow = .list
    }
    
    func start(previous: BaseCoordinator?) {
        self.previous = previous
        doPresentaion(action: .push)
    }
    
    func go(to flow: CoordinatorFlow) {
        
        switch flow {
        case .welcome:
            doPresentaion(action: .push)
        case .details:
            next?.start(previous: self)
        default:
            return
        }
    }
    
    func doPresentaion(action: PresenterAction) {
        switch action {
        case .push:
            navigation.pushViewController(controller, animated: true)
        default:
            return
        }
    }
    
}
