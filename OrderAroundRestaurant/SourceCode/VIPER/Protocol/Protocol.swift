//
//  Protocol.swift
//  OrderAroundRestaurant
//
//  Created by CSS on 07/03/19.
//  Copyright © 2019 CSS. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper


//MARK:- PRESENTER: [FORWARD] [view to presenter]
protocol PresenterInputProtocol: class {
    
    var view: PresenterOutputProtocol? {get set}
    var interactor: PresenterToInterectorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    
    func GETPOST<T: Mappable>(api : String, params : [String:Any], methodType:HttpType, modelClass: T.Type, token:Bool)
    func IMAGEPOST<T: Mappable>(api : String, params : [String:Any], methodType:HttpType, imgData:[String : Data]?, imgName:String,modelClass: T.Type,token:Bool)
}

//MARK:- INTERACTOR: [FORWARD]
protocol PresenterToInterectorProtocol: class {
    
    var  presenter: InterectorToPresenterProtocol? {get set}
    var webService : WebServiceProtocol? {get set}
    
    func FetchingData<T: Mappable>(api: String, params: [String : Any], methodType: HttpType, modelClass: T.Type, token: Bool)
    func IMAGEPOSTfetchData<T: Mappable>(api : String, params : [String:Any], methodType:HttpType, imgData:[String : Data]?, imgName:String,modelClass : T.Type,token:Bool)
    
}
//MARK:- Web Service Protocol [FORWARD]
protocol WebServiceProtocol : class {
    
    var interactor : WebServiceToInteractor? {get set}
    var completion: ((CustomError?, Data?) -> ())? {get set}
    
    func retrieve<T: Mappable>(api : String, params : [String:Any], imageData: [String : Data]?, type : HttpType, modelClass: T.Type, token: Bool, completion : ((CustomError?, Data?)->())?)
}

//MARK:- Web Service Protocol [BACKWARD]
protocol WebServiceToInteractor : class {
    
    func responseSuccess<T: Mappable>(className:T.Type, responseDict:[String: Any], responseArray: [[String: Any]])
    func responseError(error : CustomError)
    
    /* func dictModelClass(className:Any,response:[String: Any])
     func arrayModelClass(className:Any,arrayResponse:[[String: Any]]) */
}
//MARK:- INTERACTOR: [BACKWARD]
protocol InterectorToPresenterProtocol: class {
    /*func DataFetchedArray(data: [Mappable], modelClass: Any)
     func DataFetched(data: Mappable,modelClass: Any)*/
    
    func dataSuccess(dataArray: [Mappable]?,dataDict: Mappable?, modelClass: Any)
    func dataError(error : CustomError)
}
//MARK:- PRESENTER: [BACKWARD]  [Presenter to View]:
protocol PresenterOutputProtocol: class{
    /*func showArrayData(data: [Mappable],modelClass: Any)
     func showData(data: Mappable,modelClass: Any)*/
    
    func showSuccess(dataArray: [Mappable]?, dataDict: Mappable?,modelClass: Any)
    func showError(error : CustomError)
}

//MARK:- ROUTER:
protocol PresenterToRouterProtocol : class {
//    static func createModule(Identifier:String) -> UIViewController
    //static func createModule() -> UIViewController
    static func createModule() -> UIViewController
}

extension PresenterOutputProtocol {
    var presenter: PresenterInputProtocol? {
        get {
            presenterObject?.view = self
            self.presenter = presenterObject
            return presenterObject
        }
        set(newValue){
            presenterObject = newValue
        }
    }
}


// MARK:- View Structure
protocol UIViewStructure {
    //Responsible for initialization of all variables and data to be initiated only once
    func initalLoads()
    
    // All View Localization to be completely implemented here
    func localize()
    
    // Font Design Color and font handling to here implemented here
    func design()
    
    // All Constraint and size handling to be written here
    func layouts()
}
