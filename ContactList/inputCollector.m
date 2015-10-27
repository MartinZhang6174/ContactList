//
//  inputCollector.m
//  
//
//  Created by Kelo Akalamudo on 10/20/15.
//
//

#import "inputCollector.h"


@implementation inputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@" > %@",promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    NSLog(@"Input was: %@", inputString);
    return inputString;
}
@end

