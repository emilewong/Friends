//
//  ContentView.swift
//  Friends
//
//  Created by Emile Wong on 11/6/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @ObservedObject var fetchUsers = FetchUsers()
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List(fetchUsers.users) { user in
                NavigationLink(destination: UserDetailView(fetchUsers: fetchUsers, user: user)){
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
                } //: LINK
            } //: LIST
        } //: NAVIGATION
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
