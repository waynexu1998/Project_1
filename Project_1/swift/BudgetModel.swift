//
//  BudgetModel.swift
//  Project_1
//
//  Created by Jiangyong Xu on 9/29/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import Foundation

class budget{
    private var username = ""
    private var customer_num = 0
    var totalBudget = 0
    
    
    var shop_Budget = 0
    var food_Budget = 0
    var utility_Budget = 0
    
    
    
    func setUsername(x: String){
        username = x
    }
    
    func getUsername() -> String {
        return username
    }
    
    func setCusNum(x: Int){
        customer_num = x
    }
    
    func getCusNum() -> Int {
        return customer_num
    }
    
    func setTB(x: Int){
        totalBudget = x
    }
    
    func getTB() -> Int {
        totalBudget = shop_Budget+food_Budget+utility_Budget
        return totalBudget
    }
    
    func setSB(x: Int){
        shop_Budget = x
    }
    
    func getSB() -> Int{
        return shop_Budget
    }
    
    func setFB(x: Int){
        food_Budget = x
    }
    
    func getFB() -> Int{
        return food_Budget
    }
    
    func setUB(x: Int){
        utility_Budget = x
    }
    
    func getUB() -> Int{
        return utility_Budget
    }
}
