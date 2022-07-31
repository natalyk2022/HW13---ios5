//
//  ViewController.swift
//  HW13 - ios5
//
//  Created by  Nataly on 31.07.22.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView(frame: .zero, style: .grouped)
    var model = [[Settings]]()
    var settingsModel = SettingsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        model = settingsModel.createModel()
        
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) 
        
        cell.imageView?.image = UIImage(systemName: model[indexPath.section][indexPath.row].imageName)
        cell.textLabel?.text = model[indexPath.section][indexPath.row].title
        
        let accessuareType = model[indexPath.section][indexPath.row].type
        
        if accessuareType == .switchType {
            cell.accessoryView = UISwitch()
        }
        
        if accessuareType == .disclosureType {
            cell.accessoryType = .disclosureIndicator
        }
            
        return cell
    }
}

