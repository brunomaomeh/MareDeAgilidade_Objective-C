//
//  Conta.h
//  Banco
//
//  Created by bruno soares on 11/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Conta : NSObject {
	float saldo;
}

- (BOOL) depositar: (float) valor;

@end
