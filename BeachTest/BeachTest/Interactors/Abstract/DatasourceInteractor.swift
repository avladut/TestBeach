//
//  DatasourceInteractor.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

enum DataSourceErrors: Error {
    case ErrorInitialisationFailed
}

protocol DatasourceInteractor {
    
    //associatedtype Item
    
    typealias DatasourceInitialisationComplete = (_ complete: Bool, _ error: DataSourceErrors?) -> Void
    typealias ItemsFetchCompletion<T> = (_ items: [T], _ error: DataSourceErrors?) -> Void

    func initialiseDataSource(completion: DatasourceInitialisationComplete)
    func getItemList<T: Codable> (_ completion: ItemsFetchCompletion<T>)
    func getItemsNumber<T: Codable> (typeOfClass: T.Type) -> Int
}
