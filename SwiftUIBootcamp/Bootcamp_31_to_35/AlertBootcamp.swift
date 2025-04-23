//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 23/04/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            
            VStack {
                Button("Button 1".uppercased()) {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded 🙅‍♂️"
                    showAlert.toggle()
                }
                Button("Button 2".uppercased()) {
                    alertType = .success
//                    alertTitle = "Successfully uploaded the video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }

            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a successs"), message: nil, dismissButton: .default(Text("ok"), action: {
                backgroundColor = .green
            }))
        case nil:
            return Alert(title: Text("Error"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("Ok")))
//        Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .gray
//            }),
//            secondaryButton: .cancel())
//        //            Alert(title: Text("There was an error"))
    }
}

#Preview {
    AlertBootcamp()
}
