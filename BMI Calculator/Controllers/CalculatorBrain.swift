
import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let height = Float(round(height*1000)/1000)
        let weight = Float(round(weight))
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiFormatted = String(format: "%.1f", bmi ?? 0.0)
        return bmiFormatted
    }
}
