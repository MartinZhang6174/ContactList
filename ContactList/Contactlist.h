//
//  Contactlist.h
//  
//
//  Created by Kelo Akalamudo on 10/20/15.
//
//

#import <Foundation/Foundation.h>
#import "Contactlist.h"
#import "Contact.h"

@interface Contactlist : NSObject

@property NSMutableArray *listContacts;

-(id) init;
-(void)addContact:(Contact *)newContact;
-(void)printContactList;

@end
