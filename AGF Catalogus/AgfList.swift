/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct AgfList: View {
    var body: some View {
        NavigationView {
            List(AgfData) { agf in
                NavigationLink(destination: AgfDetail   (agf: agf)) {
                    AgfRow(agf: agf)
                }
            }
            .navigationBarTitle(Text("Groente"))
        }
    }
}

struct AgfList_Previews: PreviewProvider {
    static var previews: some View {
            AgfList()
    }
}
