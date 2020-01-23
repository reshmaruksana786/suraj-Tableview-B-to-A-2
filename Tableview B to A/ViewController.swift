//
//  ViewController.swift
//  Tableview B to A
//
//  Created by SAISURAJ on 1/9/20.
//  Copyright © 2020 sai. All rights reserved.
//



import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,TransferData {
    
    @IBAction func Add(_ sender: Any)
    {
        var sec = storyboard?.instantiateViewController(withIdentifier: "sec") as! SecondViewController
       
        present(sec, animated: true)
            
        {
            
            sec.dataRef = self as! TransferData
            
        }
    }
    

    var TV = UITableView()
    
    var nameData=[String]()
    
    var ageData=[String]()
    
    var mailData=[String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        TV = UITableView()
        TV.dataSource=self
        TV.delegate=self
        TV.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: view.frame.height)
        TV.backgroundColor = .green
        TV.register(UITableViewCell.self, forCellReuseIdentifier: "abc")
        view.addSubview(TV)
        
        
        
        
    }
   
    func transferContacts(contacts: [String])
    
    {
        self.nameData.append(contacts[0])
        print(contacts[0],"cont[0]")
        print(nameData,"name")
        
        self.ageData.append(contacts[1])
         print(ageData,"age")
        
        self.mailData.append(contacts[2])
        print(mailData,"mail")
        
        TV.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        if section == 0
        {
            print(nameData.count,"namecount")
            return nameData.count
        }
        else if section == 1
        {
            return ageData.count
        }
        else
        {
            return mailData.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        if section == 0
        {
            return "Name"
        }
        else if section == 1
        {
            return "Age"
        }
        else
        {
            return "Email"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        
        let cell = TV.dequeueReusableCell(withIdentifier: "abc", for: indexPath)
        
        if indexPath.section == 0
        {
            cell.textLabel?.text = nameData[indexPath.row]
            cell.backgroundColor = .orange
        }
        else if indexPath.section == 1
        {
            
            cell.textLabel?.text = ageData[indexPath.row]
            cell.backgroundColor = .orange
        }
        else
        {
            cell.textLabel?.text = mailData[indexPath.row]
            cell.backgroundColor = .orange
        }
        return cell
    }
    
    


}

