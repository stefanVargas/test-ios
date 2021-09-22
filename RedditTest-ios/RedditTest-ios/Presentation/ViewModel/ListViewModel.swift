//
//  ListViewModel.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import UIKit

class ListViewModel: BaseViewModelProtocol {
    
    var view: UIView
    let title: String = Texts.welcomeTitle
    var action: EnterAction?
    
    
    init(view: UIView) {
        self.view = view
    }
    
    func bind() {
      
    }
    
    func setAction(_ action: @escaping () -> Void) {
        self.action = action
    }
}
