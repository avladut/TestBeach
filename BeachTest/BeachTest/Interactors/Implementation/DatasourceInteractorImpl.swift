//
//  DatasourceInteractorImpl.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
class DatasourceInteractorImpl {
    
}

extension DatasourceInteractorImpl: DatasourceInteractor {
    func initialiseDataSource(completion: (Bool, DataSourceErrors?) -> Void) {
        
    }
    
    func getItemList<T>(_ completion: ([T], DataSourceErrors?) -> Void) where T : Decodable, T : Encodable {
        
    }
    
    func getItemsNumber<T>(typeOfClass: T.Type) -> Int where T : Decodable, T : Encodable {
        
        
        return 0    }
    
}
