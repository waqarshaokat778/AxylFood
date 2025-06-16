//
//  PastOrderViewController.swift
//  OrderAroundRestaurant
//
//  Created by CSS on 06/03/19.
//  Copyright © 2019 CSS. All rights reserved.
//

import UIKit
import ObjectMapper
class PastOrderViewController: BaseViewController {

    @IBOutlet weak var pastTableView: UITableView!
    
    
    var completedOrderArr = [Orders]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setInitialLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension PastOrderViewController{
    private func setInitialLoad(){
        setRegister()
        setOrderHistoryApi()
    }
    private func setRegister(){
        let upcomingRequestViewnib = UINib(nibName: XIB.Names.UpcomingRequestTableViewCell, bundle: nil)
        pastTableView.register(upcomingRequestViewnib, forCellReuseIdentifier: XIB.Names.UpcomingRequestTableViewCell)
        pastTableView.delegate = self
        pastTableView.dataSource = self
        pastTableView.reloadData()
    }
    private func setOrderHistoryApi(){
        showActivityIndicator()
        let urlStr = "\(Base.getOrder.rawValue)?t=past"
        self.presenter?.GETPOST(api: urlStr, params: [:], methodType: .GET, modelClass: OrderModel.self, token: true)
    }
    
}
extension PastOrderViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return completedOrderArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: XIB.Names.UpcomingRequestTableViewCell, for: indexPath) as! UpcomingRequestTableViewCell
        let dict = self.completedOrderArr[indexPath.row]
    
     
        cell.paymentLabel.text = dict.invoice?.payment_mode
        cell.orderTimeValueLabel.text = dict.delivery_date
        cell.locationLabel.text = dict.address?.city
        cell.userNameLabel.text = dict.user?.name
        cell.orderTimeLabel.text = "Order Time"
        cell.userImageView.sd_setImage(with: URL(string: dict.user?.avatar ?? ""), placeholderImage: UIImage(named: "user-placeholder"))
        
        return cell
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 108
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let orderDetailController = self.storyboard?.instantiateViewController(withIdentifier: Storyboard.Ids.OrderTrackingViewController) as! OrderTrackingViewController
          let dict = self.completedOrderArr[indexPath.row]
        orderDetailController.OrderId = dict.id ?? 0
        self.navigationController?.pushViewController(orderDetailController, animated: true)
    }
    
}
/******************************************************************/
//MARK: VIPER Extension:
extension PastOrderViewController: PresenterOutputProtocol {
    func showSuccess(dataArray: [Mappable]?, dataDict: Mappable?, modelClass: Any) {
        if String(describing: modelClass) == model.type.OrderModel {
            HideActivityIndicator()
            let data = dataDict as? OrderModel
            self.completedOrderArr = data?.orders ?? []
            pastTableView.reloadData()
            
            
        }
    }
    
    func showError(error: CustomError) {
        print(error)
        let alert = showAlert(message: error.localizedDescription)
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: {
                self.HideActivityIndicator()
            })
        }
    }
    
    
    
}
/******************************************************************/
