//
//  Contact.m
//  
//
//  Created by Kelo Akalamudo on 10/20/15.
//
//

#import "Contact.h"

@implementation Contact
-(id) initContact:(NSString *)name email:(NSString*)email {
    self = [super init];
    if (self) {
        self.name = name;
        self.email = email;
    }
    return self;
}

@end
