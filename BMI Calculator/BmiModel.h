//
//  BmiModel.h
//  BMI Calculator
//
//  Created by David Pedroza on 9/16/14.
//  Email: Krazydave65@csu.fullerton.edu
//
//  Description: This is tbe Model of the BMI... this file declares all the bmi variables.
//              This header function also decares a function for both US and metric Measurements
//  Copyright (c) 2014 DavidPedroza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BmiModel : NSObject{
    float weight, height,bmi;
    
}

// Functions: US and Metric
// PreConditions: weight, height
// PostConditions: bmi
-(float)bmiUSCalculatorHeight:(float)aheight andWeight:(float)aweight;
-(float)bmiMetricCalculatorHeight:(float)aheight andWeight:(float)aweight;

@end
