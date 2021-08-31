//
//  ViewPresenter.swift
//  
//
//  Created by Ahmed Yasser on 31/08/2021.
//

import Foundation

// MARK:- Presenter
protocol ViewPresenterProtocol: PageablePresenter {
    
}

class ViewPresenter {
    
    // MARK:- Variables

    private var isPresenterFetching = false
    private weak var view: ViewProtocol!
    
    // MARK:- Init
    
    init(view: ViewProtocol) {
        self.view = view
    }
    
    
}

extension ViewPresenter: ViewPresenterProtocol {
    var isFetching: Bool {
        get {
            return isPresenterFetching
        }
        set {
            isPresenterFetching = newValue
        }
    }
    
    var currentPage: Int {
        return 1
    }
    
    var lastPage: Int {
        return 3
    }
    
    func paginate() {
        sleep(1)
        
    }
    
    
}
