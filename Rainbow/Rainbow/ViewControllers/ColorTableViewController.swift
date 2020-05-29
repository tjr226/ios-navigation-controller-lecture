//
//  ColorTableViewController.swift
//  Rainbow
//
//  Created by Timothy Rooney on 5/29/20.
//  Copyright © 2020 Timothy Rooney. All rights reserved.
//

import UIKit


class ColorTableViewController: UITableViewController {
    
    var colors: [Color] = [
        Color(name: "Red", color: .red),
        Color(name: "Orange", color: .orange),
        Color(name: "Yellow", color: .yellow),
        Color(name: "Green", color: .green),
        Color(name: "Blue", color: .blue),
        Color(name: "Cyan", color: .cyan),
        Color(name: "Purple", color: .purple)
    ]



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print("in UI table view")
//        this prints
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        cell.textLabel?.text = colors[indexPath.row].name
        
        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        CODE FROM INSTRUCTOR, WORKS
        if segue.identifier == "showColorDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as? ColorsDetailViewController
                detailVC?.backgroundColor = colors[indexPath.row].color
            }
        }
        
//          CODE FROM OTHER STUDENT, WORKS
//        if segue.identifier == "showColorDetail" {
//            guard let indexPath = tableView.indexPathForSelectedRow,
//            let colorsVC = segue.destination as? ColorsDetailViewController else { return }
//
//            colorsVC.backgroundColor = colors[indexPath.row].color
//        }
        
//      CODE FOR CONTACTS from Training Kit

        
//        if segue.identifier == "ShowContact" {
//            guard let contactDetailVC = segue.destination as? ContactDetailViewController else { return }
//            guard let indexPath = tableView.indexPathForSelectedRow else { return }
//            let contact = contacts[indexPath.row]
//            contactDetailVC.contact = contact
//        }

         // WORKING
//        if segue.identifier == "showColorDetail" {
//            guard let colorDetailVC = segue.destination as? ColorsDetailViewController else { return }
//            guard let indexPath = tableView.indexPathForSelectedRow else { return }
//            let color = colors[indexPath.row].color
//            colorDetailVC.backgroundColor = color
//        }
        
        
        //         Get the new view controller using segue.destination.
    
        //        Pass the selected object to the new view controller.
   
    }
    

}
