//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem1396DesignUndergroundSystem {
    
    final class SolutionA: Problem1396DesignUndergroundSystemSolution {
        
        private var checkIns = [Int: (String, Int)]()
        private var travelTimes = [String: [String: [Double]]]()
        
        init() {}
        
        func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
            checkIns[id] = (stationName, t)
        }
        
        func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
            guard let (startStation, checkInTime) = checkIns[id] else {
                fatalError("Violated constraint: non-chronological checkout")
            }
            checkIns.removeValue(forKey: id)
            
            if travelTimes[startStation] == nil {
                travelTimes[startStation] = [String: [Double]]()
            }
            if travelTimes[startStation]?[stationName] == nil {
                travelTimes[startStation]?[stationName] = [Double]()
            }
            
            let travelTime = Double(t - checkInTime)
            travelTimes[startStation]?[stationName]?.append(travelTime)
        }
        
        func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
            guard let travelTimes = travelTimes[startStation]?[endStation] else {
                fatalError("Violated constraint: no travel has been registered from \(startStation) to \(endStation)")
            }
            return travelTimes.reduce(0, +) / Double(travelTimes.count)
        }
        
    }
    
}
