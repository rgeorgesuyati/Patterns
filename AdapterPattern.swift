//
//  Adapter Pattern.swift
//  Patterns
//
//  Created by Rijo George on 21/04/19.
//  Copyright © 2019 Rijo George. All rights reserved.
//

import Foundation

//https://medium.com/swiftcraft/swift-solutions-adapter-pattern-a2118a6a2910
// There are 2 ways to implment Adapter pattern.One through extension and other using dedicated adapter approach
protocol Attendance {
    func markAttendance()
}

class Student: Attendance{
    func getReportCard(){
    }
    
    func markAttendance(){
    }
}

class Teacher: Attendance{
    func getBio(){
    }
    func markAttendance(){
    }
}

class Admin{
    func getAdminDetails(){
    }
}

// extension approach for giving admin, a new attendance feature
extension Admin:Attendance{
    func markAttendance() {
        
    }
}

// dedicated adapter for admin
class AdminAdaptor: Attendance {
    private let admin = Admin()
    func markAttendance() {
        admin.markAttendance()
    }
}

//usage
class School{
    func markPeopleAttendance(){
        let jake = Teacher()
        let kate = Student()
        let george = Admin()
        
        jake.markAttendance()
        kate.markAttendance()
        george.markAttendance()
        
        let jikk = AdminAdaptor()
        jikk.markAttendance()

        let users:[Attendance] = [jake,kate,george]
        for user in users {
            user.markAttendance()
        }
    }
}

