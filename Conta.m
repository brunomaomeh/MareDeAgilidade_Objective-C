//
//  Conta.m
//  Banco
//
//  Created by bruno soares on 11/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Conta.h"

@implementation Conta

@synthesize saldo, nome;

- (id) initWithSaldo:(float)valor {
	if(self = [self init]) {
		saldo = valor;
	}
	return self;
}

- (BOOL) depositar:(float)valor {
	if (valor > 0) {
		saldo += valor;
		return YES;
	} else {
		return NO;
	}
}
- (BOOL) sacar: (float) valor {
	if (valor > 0 && valor <= saldo) {
		saldo -= valor;
		return YES;
	} else {
		return NO;
	}
}

- (BOOL) transferir: (float) valor para: (Conta *) destino {
	if ([self sacar: valor]) {
		return [destino depositar: valor];
	} else {
		return NO;
	}
}

- (void) dealloc {
	[self.nome release];
	[super dealloc];
}

@end
