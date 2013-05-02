#import <Kiwi.h>
#import "SampleClass.h"

SPEC_BEGIN(SampleClassSpec)

describe(@"SampleClass", ^{
    context(@"when newly created", ^{
        it(@"should have a username", ^{
            SampleClass* user = [[SampleClass alloc] init];
            user.username = @"TestUser";
            
            [[user.username should] equal:@"TestUser"];
        });
        
        it(@"should have a password", ^{
            SampleClass* user = [[SampleClass alloc] init];
            user.username = @"Password";
            
            [[user.username should] equal:@"Password"];
        });
        
        
    });
});

SPEC_END;


