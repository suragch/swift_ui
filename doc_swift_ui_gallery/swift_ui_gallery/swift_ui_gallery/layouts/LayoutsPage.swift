import SwiftUI

struct LayoutsPage: View {
    var body: some View {
        NavigationStack {
            List {
                Section() {
                    NavigationLink {
                        VStackLeadingAlignedPage()
                    } label: {
                        Text("Top Aligned")
                    }
                    
                    NavigationLink {
                        VStackCenterAlignedPage()
                    } label: {
                        Text("Middle Aligned")
                    }
                    
                    NavigationLink {
                        VStackTrailingAlignedPage()
                    } label: {
                        Text("Bottom Aligned")
                    }
                    
                    NavigationLink {
                        VStackExceedsAvailableSpacePage()
                    } label: {
                        Text("Exceeds available space")
                    }
                } header: {
                    Text("VStack")
                }
                
                Section() {
                    TodoLink(label: "Left Aligned")
                    
                    TodoLink(label: "Center Aligned")
                    
                    TodoLink(label: "Right Aligned")
                    
                    TodoLink(label: "Exceeds available space")
                } header: {
                    Text("HStack")
                }
                
                Section() {
                    TodoLink(label: "Example")
                } header: {
                    Text("ZStack")
                }
                
                Section() {
                    TodoLink(label: "Fits available space")
                    
                    TodoLink(label: "Exceeds available space")
                } header: {
                    Text("Grid")
                }
            }.navigationTitle("Layouts")
        }
    }
}

struct LayoutsPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutsPage()
    }
}
