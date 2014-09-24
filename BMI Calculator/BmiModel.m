//
//  BmiModel.m
//  BMI Calculator
//
//  Created by David Pedroza on 9/16/14.
//  Email: Krazydave65@csu.fullerton.edu
//
//  Description: This is the implementation for US and Metric Measurements
//  Copyright (c) 2014 DavidPedroza. All rights reserved.
//

#import "BmiModel.h"

@implementation BmiModel

-(float)bmiUSCalculatorHeight:(float)aheight andWeight:(float)aweight{
    float bmiAnswer;
    bmiAnswer = (aweight/(aheight * aheight))*703;
    return bmiAnswer;
}

-(float)bmiMetricCalculatorHeight:(float)aheight andWeight:(float)aweight{
    float bmiAnswer;
    aheight = aheight/100;
    bmiAnswer = (aweight/(aheight*aheight));
    return bmiAnswer;
}

@end
