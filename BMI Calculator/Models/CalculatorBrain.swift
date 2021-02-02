
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let height = Float(round(height*1000)/1000)
        let weight = Float(round(weight))
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pork belly.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle.", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "No more sweet snacks and try 5/2 diet.", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }

    }
    
    func getBMIValue() -> String {
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormatted
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
