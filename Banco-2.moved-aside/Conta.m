//
//  Conta.m
//  Banco
//
//  Created by bruno soares on 11/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Conta.h"


@implementation Conta

- (BOOL) depositar:(float)valor {
	if (valor > 0) {
		saldo += valor;
		return YES;
	} else {
		return NO;
	}
}

@end
