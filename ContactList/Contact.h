//
//  Contact.h
//  
//
//  Created by Kelo Akalamudo on 10/20/15.
//
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property (nonatomic) NSMutableDictionary *contactNumber;
-(id) initContact:(NSString *)name email:(NSString*)email;
@end
