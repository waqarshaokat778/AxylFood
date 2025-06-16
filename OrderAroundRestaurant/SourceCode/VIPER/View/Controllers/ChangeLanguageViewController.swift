//
//  ChangeLanguageViewController.swift
//  orderAround
//
//  Created by Thiru on 14/03/19.
//  Copyright © 2019 css. All rights reserved.
//

import UIKit

class ChangeLanguageViewController: UIViewController {
    
    // Outlets
    
    
    @IBOutlet weak var languageListTableView: UITableView!
    
    // Variable
    var selectedIndex = -1
    
    private var selectedLanguage : Language = .english {
        didSet{
            setLocalization(language: selectedLanguage)
        }
    }
    
    //View LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}

extension ChangeLanguageViewController {
    
    private func initialLoad() {
        
        languageListTableView.tableFooterView = UIView()
        
        if let lang = UserDefaults.standard.value(forKey: Keys.list.language) as? String, let language = Language(rawValue: lang) {
            selectedLanguage = language
        }
        
        self.title = APPLocalize.localizestring.changeLanguage.localize()
        setNavigationController()
    }
    
    private func setNavigationController(){
        
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.primary
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.bold(size: 18), NSAttributedString.Key.foregroundColor : UIColor.white]
        self.title = APPLocalize.localizestring.changeLanguage.localize()
        let btnBack = UIButton(type: .custom)
        btnBack.setImage(UIImage(named: "back-white"), for: .normal)
        btnBack.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnBack.addTarget(self, action: #selector(self.ClickonBackBtn), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btnBack)
        self.navigationItem.setLeftBarButtonItems([item], animated: true)
        
    }
    
    @objc func ClickonBackBtn()
    {
        self.navigationController?.popViewController(animated: true)
    }
    private func switchSettingPage() {
        self.navigationController?.isNavigationBarHidden = true // For Changing backbutton direction on RTL Changes
        guard let transitionView = self.navigationController?.view else {return}
        
//        let settingVc = Router.main.instantiateViewController(withIdentifier: Storyboard.Ids.TabbarController)
        UIView.beginAnimations("anim", context: nil)
        UIView.setAnimationDuration(0.8)
        UIView.setAnimationCurve(.easeInOut)
//        UIView.setAnimationTransition(selectedLanguage == .arabic ? .flipFromLeft : .flipFromRight, for: transitionView, cache: false)
//        self.navigationController?.pushViewController(settingVc, animated: true)
//        self.navigationController?.popViewController(animated: true)
        let splash = Router.main.instantiateViewController(withIdentifier: Storyboard.Ids.TabbarController)
        let navigationController = UINavigationController()
        navigationController.viewControllers = [splash]
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        /* Setting up the root view-controller as ui-navigation-controller */
        appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
        appDelegate.window?.rootViewController = navigationController
        appDelegate.window?.makeKeyAndVisible()
        
        self.navigationController?.isNavigationBarHidden = true
        UIView.commitAnimations()
//        if Int.removeNil(navigationController?.viewControllers.count) > 2 {
//            self.navigationController?.viewControllers.remove(at: 1)
//        }
    }
    
}
//MARK: Tableview Datasource and Delegate
// UItableView Datasource
extension ChangeLanguageViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Language.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingPageCell", for: indexPath) as! settingPageCell
        cell.textLabel?.textAlignment = .left
        
        cell.textLabel?.text = Language.allCases[indexPath.row].title.localize()
        cell.accessoryType = selectedLanguage == Language.allCases[indexPath.row] ? .checkmark : .none
        cell.textLabel?.font = .regular(size: 16)
        
        return cell
    }
    
}

// UItableView Delegate
extension ChangeLanguageViewController: UITableViewDelegate {
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let language = Language.allCases[indexPath.row]
        //   var languageObject = LocalizationEntity()
        //   languageObject.language = language
        //     self.presenter?.post(api: .updateLanguage, data: languageObject.toData()) // Sending selected language to backend
        guard language != self.selectedLanguage else {return}
        self.selectedLanguage = language
        UserDefaults.standard.set(self.selectedLanguage.rawValue, forKey: Keys.list.language)
        self.languageListTableView.reloadRows(at: (0..<Language.allCases.count).map({IndexPath(row: $0, section: 0)}), with: .automatic)
        selectedIndex = indexPath.row
        self.languageListTableView.reloadData()
        self.switchSettingPage()
       
    }
}

class settingPageCell : UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
