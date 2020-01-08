/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct AgfRow: View {
    var agf: AGF

    var body: some View {
        HStack {
            agf.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(verbatim: agf.name)
            Spacer()
        }
    }
}

struct AgfRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AgfRow(agf: AgfData[0])
            AgfRow(agf: AgfData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
