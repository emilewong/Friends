//
//  UserDetailView.swift
//  Friends
//
//  Created by Emile Wong on 13/6/2021.
//

import SwiftUI

struct UserDetailView: View {
    // MARK: - PROPERTIES
    @ObservedObject var fetchUsers: FetchUsers
    
    var user: User
    // MARK: - BODY
    var body: some View {
        Form{
            VStack(alignment: .leading){
                Text("Name: \(user.name)")
                    .font(.title3)
                HStack{
                    Text("Age: \(user.age)")
                        .font(.headline)
                    Text("Company: \(user.company)")
                        .font(.headline)
                } //: HSTACK
            } //: VSTACK
            Text("Friend: \(user.friends.count) friend(s)")
            List(user.friends){ friend in
               
                    VStack{
                        Text(friend.name)
                            .font(.headline)
                        if let firstFriend = fetchUsers.users.first(where: { $0.name == friend.name}){
                            HStack{
                                Text("Age: \(firstFriend.age)")
                                    .font(.footnote)
                                Text("Company: \(firstFriend.company)")
                                    .font(.footnote)
                            } //: HSTACK
                        }
                    } //: VSTACK
            
            } //: LIST
        } //: FORM
    }
}
