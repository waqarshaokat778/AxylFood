//
//  Constants.swift
//  OrderAroundRestaurant
//
//  Created by CSS on 25/02/19.
//  Copyright © 2019 CSS. All rights reserved.
//

import Foundation
import UIKit

let appDelegate = UIApplication.shared.delegate as! AppDelegate
var profiledata: ProfileModel?

// MARK: - Font
enum NunitoText: String {
    case nunitoTextbold = "Nunito-Bold"
    case nunitoTextBlack = "Nunito-Black"
    case nunitoTextExtraBold = "Nunito-ExtraBold"
    case nunitoTextExtraLight = "Nunito-ExtraLight"
    case nunitoTextregular = "Nunito-Regular"
    case nunitoTextmedium = "Nunito-Medium"
    case nunitoTextlight = "Nunito-Light"
    case nunitoTextsemibold = "Nunito-SemiBold"
}


//MARK:- Constant Strings
struct APPLocalize {
    
    static let localizestring = APPLocalize()

    let English = "localize.English"
    let Arabic = "localize.Arabic"
    let Japanese = "localize.Japanese"
    
    var password  = "localize.password"
    var donthanve = "localize.donthanve"
    var register  = "localize.register"
    var login     = "localize.login"
    
    var Home    = "localize.Home"
    var Revenue = "localize.Revenue"
    var Dishes  = "localize.Dishes"
    var Profile = "localize.Profile"
    
    var history = "localize.history"
    var editPartner = "localize.editPartner"
    var edittiming = "localize.edittiming"
    var Deliveries = "localize.Deliveries"
    var changePassword = "localize.changePassword"
    var logout = "localize.logout"
    var deleteAccount = "localize.deleteAccount"
    var deleteAccountDescr = "localize.deleteAccountDescr"
    var logoutDescr = "localize.logoutDescr"
    var accept = "localize.accept"
    var cancel = "localize.cancel"
    var waiting = "localize.waiting"
    var addonSuccess = "localize.addonsuccess"
    
    var enterfetaureImage = "localize.enterFeatureUploadImg"
    
    var totalRevenue    = "localize.totalRevenue"
    var orderReceived   = "localize.orderReceived"
    var orderDelivered  = "localize.orderDelivered"
    var todayEarnings   = "localize.todayEarnings"
    var monthlyEarnings = "localize.monthlyEarnings"
    var orderCancelled  = "localize.orderCancelled"
    
    var addons   = "localize.addons"
    var category = "localize.category"
    var product  = "localize.product"
    
    var addonsList = "localize.addonsList"
    var addAddons  = "localize.addAddons"
    
    var categoryList  = "localize.categoryList"
    var addCategories = "localize.addCategories"
    
    var productList = "localize.productList"
    var addProducts = "localize.addProducts"
    
    var createProduct = "localize.createProduct"
    var name = "localize.name"
    var enterDetailsToRegister = "localize.enterDetailsToRegister"
    var description = "localize.description"
    var productCusine = "localize.productCusine"
    var status = "localize.status"
    var productOrder = "localize.productOrder"
    var Category = "localize.Category"
    var imageUpload = "localize.imageUpload"
    var Isfeatured = "localize.Isfeatured"
    var yes = "localize.yes"
    var no = "localize.no"
    var next = "localize.next"
    var price = "localize.price"
    var discountType = "localize.discountType"
    var discount = "localize.discount"
    var selectAddons = "localize.selectAddons"
    var categoryOrder = "localize.categoryOrder"
    var save = "localize.save"
    
   // var editPartner = "localize.editPartner"
    var editTiming = "localize.editTiming"
    var everyday = "localize.everyday"
    var openTime = "localize.openTime"
    var closeTime = "localize.closeTime"
    
    var subTotal = "localize.subTotal"
    var deliverycharge = "localize.deliverycharge"
    var tax = "localize.tax"
    var payable = "localize.payable"
    var total = "localize.total"
    
    var emailAddr = "localize.emailAddr"
    var cuisine = "localize.cuisine"
    var phonenumber = "localize.phonenumber"
    var shopbannerImage = "localize.shopbannerImage"
    var isthisveg = "localize.isthisveg"
    var minAmount = "localize.minAmount"
    var offerinper = "localize.offerinper"
    var maxdelivery = "localize.maxdelivery"
    var address = "localize.address"
    var landmark = "localize.landmark"
    
    var currentPassword = "localize.currentPassword"
    var newPassword = "localize.newPassword"
    var confirmPassword = "localize.confirmPassword"
    
    var filterby = "localize.filterby"
    var deliveryPer = "localize.deliveryPer"
    var selectdeliveryperson = "localize.selectdeliveryperson"
    var All = "localize.All"
    var Completed = "localize.Completed"
    var Cancelled = "localize.Cancelled"
    var from = "localize.from"
    var to  = "localize.to"
    var filter = "localize.filter"
    var OK = "localize.OK"
    var alreadyRegister = "localize.alreadyRegister"
    var ongoingOrders = "localize.ongoingOrder"
    var pastOrders = "localize.pastOrder"
    var cancelOrder = "localize.cancelOrder"
    var french = "localize.french"
    var changeLanguage = "localize.ChangeLanguage"
    
    var Wallet = "localize.Wallet"
    var enterTheAmount = "localize.entertheamount"
    var sendAmount = "localize.sendamount"
    var walletAmount = "localize.walletAmount"
    var walletSuccess = "localize.WalletAmoutSuccess"
    var createCategory = "localize.createcategory"
    var addOns = "localize.addOns"
    var enterDeliveryTime = "localize.enterDeliveryTime"
    var enterOrderPreparationTime = "localize.enterOrderPreparationTime"

//
//    var deviceType = "デバイスタイプなし"
//    var noDeviceID = "デバイスIDなし"
//    var noDeviceToken = "123456"
//    var deleteCategory = "カテゴリを削除してもよろしいですか"
//    var deleteProduct = "商品を削除してよろしいですか"
//
//    var deleteAccount = "アカウントを削除してもよろしいですか"
//    var appName = "周辺のレストラン"
//    var logout = "ログアウトしてよろしいですか"
//    var yes = "はい"
//    var no = "いいえ"
//    let OK = "OK"
//    var countryNumber = "+91"
//    var countryCode = "IN"
//
//    var subTotal = "小計"
//    var deliverycharge = "配送料"
//    var tax = "税金"
//    var discount = "ディスカウント"
//    var payable = "買掛金"
 //   var total = "合計"
//
}

//MARK:- Error Message:
struct ErrorMessage {
    static let list = ErrorMessage()
    

    let serverError = "serverError".localize()
    let addCard = "addCard".localize()
    let enterLocationName = "enterLocationName".localize()
    let enterStreetNumber = "enterStreetNumber".localize()
    let enterColony = "enterColony".localize()
    let enterCity = "enterCity".localize()
    let enterState = "enterState".localize()

    let enterCountry = "localize.enterCountry".localize()

    let enterPostalCode = "localize.enterPostalCode".localize()

    let enterName = "localize.enterName".localize()

    let enterMobile = "localize.enterMobile".localize()

    let enterEmail = "localize.enterEmail".localize()

    let enterValidEmail = "localize.enterValidEmail".localize()

    let enterPassword = "localize.enterPassword".localize()

    let enterDescription = "localize.enterDescription".localize()

    let enterStatus = "localize.enterStatus".localize()

    let enterCaetgoryOrder = "localize.enterCaetgoryOrder".localize()

    let enterUploadImg = "localize.enterUploadImg".localize()

    let enterFeatureUploadImg = "localize.enterFeatureUploadImg".localize()

    let enterproductOrder = "localize.enterproductOrder".localize()

    let enterFeatureProduct = "localize.enterFeatureProduct".localize()

    let enterProductCusine = "localize.enterProductCusine".localize()

    let enterAddons = "localize.enterAddons".localize()

    let enterPrice = "localize.enterPrice".localize()

    let enterDiscount = "localize.enterDiscount".localize()

    let enterDiscountType = "localize.enterDiscountType".localize()



    
    let passwordlength = "localize.passwordlength".localize()

    let enterNewPassword = "localize.enterNewPassword".localize()


    let enterCurrentPassword = "localize.enterCurrentPassword".localize()

    let enterConfirmPassword = "localize.enterConfirmPassword".localize()

    let enterConfirmNewPassword = "localize.enterConfirmNewPassword".localize()

    let currentPasswordIsSame = "localize.currentPasswordIsSame".localize()

    let newPasswordDonotMatch = "localize.newPasswordDonotMatch".localize()

    let enterValidAmount = "localize.enterValidAmount".localize()

    let enterFirstName = "localize.enterFirstName".localize()

    let enterLastName = "localize.enterLastName".localize()

    let enterOldPassword = "localize.enterOldPassword".localize()

    
    let enterValidCurrentPassword = "localize.enterValidCurrentPassword".localize()

 

    
//    let serverError = "サーバーに到達できませんでした。\n 再試行"
//    let addCard = "続行するにはカードを追加してください....."
//    let enterLocationName = "所在地を入力してください"
//    let enterStreetNumber = "番地を入力してください"
//    let enterColony = "コロニーを入力してください"
//    let enterCity = "市を入力してください"
//    let enterState = "州を入力してください"
//    let enterCountry = "国を入力してください"
//    let enterPostalCode = "郵便番号を入力してください"
//    let enterName = "お名前を入力してください"
//    let enterMobile = "携帯電話番号を入力してください"
//    let enterEmail = "メールアドレスを入力してください"
//    let enterValidEmail = "有効なメールアドレスを入力してください。."
//    let enterPassword = "パスワードを入力してください"
//    let enterDescription = "説明を入力してください"
//    let enterStatus = "ステータスを選択してください"
//    let enterCaetgoryOrder = "カテゴリー順を入力してください"
//    let enterUploadImg = "画像をアップロードしてください"
//    let enterFeatureUploadImg = "特質な画像をアップロードしてください"
//    let enterproductOrder = "商品注文を入力してください"
//    let enterFeatureProduct = "特質な商品を選択してください"
//    let enterProductCusine = "製品を選択してください"
//    let enterAddons = "アドオンを選択してください"
//    let enterPrice = "価格を入力してください"
//    let enterDiscount = "割引を入力してください"
//    let enterDiscountType = "割引タイプを選択してください"
//
//
//
//    let passwordlength = "パスワードには最低6文字が必要です。."
//    let enterNewPassword = "新しいパスワードを入力してください."
//
//    let enterCurrentPassword = "現在のパスワードを入力してください."
//    let enterConfirmPassword = "確認パスワードの入力."
//    let enterConfirmNewPassword = "新しい確認パスワードを入力."
//    let currentPasswordIsSame = "現在のパスワードと新しいパスワードは同じです."
//    let newPasswordDonotMatch = "新しいパスワードと確認パスワードが一致しませんでした."
//    let enterValidAmount = "有効金額を入力"
//    let enterFirstName = "名を入力"
//    let enterLastName = "名字を入力"
//    let enterOldPassword = "以前のパスワードを入力してください"
//    let enterValidCurrentPassword = "このパスワードは間違っています."
}


//MARK:- Success Message:
struct SuccessMessage {
    static let list = SuccessMessage()
//    let loginSucess : NSString = "Login Successfully."
//    let changePasswordSuccess : NSString = "Password Changed Successfully."
    
    let loginSucess : NSString = "ログイン成功."
    let changePasswordSuccess : NSString = "パスワードは正常に変更されました."
}

//MARK:- HTTP Methods

enum HttpType : String {
    
    case GET = "GET"
    case POST = "POST"
    case PATCH = "PATCH"
    case PUT = "PUT"
    case DELETE = "DELETE"
    
}
struct model {
    
    static let type = model()
    
    let LoginModel = "LoginModel"
    let ListAddonsArrayModel = "ListAddonsArrayModel"
    let OrderHistoryModel = "OrderHistoryModel"
    let ChangePwdModel = "ChangePwdModel"
    let CusineListModel = "CusineListModel"
    let CategoryListModel = "CategoryListModel"
    let ListAddOns = "ListAddOns"
    let LogoutModel = "LogoutModel"
    let RemoveProductModel = "RemoveProductModel"
    let RemoveCategoryModel = "RemoveCategoryModel"
    let RemoveAddonsModel = "RemoveAddonsModel"
    let AddAddonsModel = "AddAddonsModel"
    let CreateCategoryModel = "CreateCategoryModel"
    let ProfileModel = "ProfileModel"
    let RevenueModel = "RevenueModel"
    let DeliveryModel = "DeliveryModel"
    let OrderModel = "OrderModel"
    let RegisterModel = "RegisterModel"
    let OrderDetailModel = "OrderDetailModel"
    let AcceptModel = "AcceptModel"
    let EditRegisterModel = "EditRegisterModel"
    let GetProductEntity = "GetProductEntity"
    let DeleteEntity = "DeleteEntity"
}


// Retrieve from UserDefaults
internal func retrieveUserData()->Bool{
    
    if let data = UserDefaults.standard.value(forKey: Keys.list.userData) as? Data, let userData = NSKeyedUnarchiver.unarchiveObject(with: data) as? String {
        
        if userData == "" {
            UserDataDefaults.main.access_token = userData
            return false
        }else{
            UserDataDefaults.main.access_token = userData
            return true
        }
        
    }
    
    return false
}

internal func initializeUserData()->UserDataDefaults
{
    return UserDataDefaults()
}

struct Constants {
    
    static let string = Constants()
    
    let empty = ""
    let noDevice = "no device"
    let English = "English"
    let Arabic = "Arabic"
    let uploadFileName = "avatar"
    let addZero = ".00"
    let Japanese = "Japanese"
}

struct Constant {
    static var string = Constant()

    var deviceType = "no deviceType"
    var noDeviceID = "no device id"
    var noDeviceToken = "123456"
    var countryNumber = "+221"
    var countryCode = "SN"
    var deleteCategory = "Are you sure want to delete Category?"
    var deleteProduct = "Are you sure want to delete Product?"
    
    var ongoingOrder = "Ongoing Orders"
    var pastOrder = "Past Orders"
    var cancelOrder = "Cancel Orders"
    
    // var deleteAccountDescr = "Are you sure want to delete your account?"
    var appName = "Axyl Restaurant"
    // var logout = "Are you sure want to logout?"
    
}
