/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct AgfDetail: View {
    var agf: AGF

    var body: some View {
        VStack {
            MapView(coordinate: agf.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: agf.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(agf.name)
                    .font(.title)
            }
            
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text(agf.hsoort)
                    Text(agf.soort)
                }
                
                //New and other heading
                HStack(alignment: .top) {
                    Text("Oogsttijd:")
                    Text(agf.harvest)
            }
                HStack(alignment: .top){
                    Text("Beschrijfing")
                    Text(agf.Beschrijfing)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: agf.name), displayMode: .inline)
    }
}

struct AgfDetail_Previews: PreviewProvider {
    static var previews: some View {
        AgfDetail(agf: AgfData[1])
    }
}
