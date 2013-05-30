#import <Kiwi.h>
#import "SampleClass.h"

SPEC_BEGIN(SampleClassSpec)

describe(@"SampleClass", ^{
    context(@"when newly created", ^{
        it(@"should have a username", ^{
            SampleClass* user = [[SampleClass alloc] init];
            user.username = 10;
            
            [[theValue(user.username) should] equal: theValue(10)];
        });
        
        it(@"should have a password", ^{
            SampleClass* user = [[SampleClass alloc] init];
            user.password = 11;
            
            [[theValue(user.password) should] equal:theValue(1)];
        });
        
        
    });
});

SPEC_END;


