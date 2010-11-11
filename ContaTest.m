//
//  ContaTest.m
//  Banco
//
//  Created by bruno soares on 11/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ContaTest.h"
#import "Conta.h"


@implementation ContaTest

- (void) testDepositarComSucesso {
	Conta * conta = [[Conta alloc] init];
	[conta depositar: 200];
	STAssertTrue(conta.saldo == 200, @"Deve ocorrer com sucesso");
}

- (void) testDepositaComFalha {
	Conta * conta = [[Conta alloc] init];
	[conta depositar: -200];
	STAssertTrue(conta.saldo == 0, @"Nao deve ocorrer");
}

- (void) testTransferenciaComSucesso {
	Conta * origem = [[Conta alloc] initWithSaldo:200];
	Conta * destino = [[Conta alloc] init];
	STAssertTrue([origem transferir:150 para: destino], @"Deve Transferir com sucesso");
}

- (void) testSacarComSucesso {
	Conta * conta = [[Conta alloc] initWithSaldo: 200];
	[conta sacar:150];
	STAssertTrue(conta.saldo == 50, @"Deve ter 50 como saldo");
}

- (void) testSacarComFalha {
	Conta * conta = [[Conta alloc] init];
	[conta sacar: 100];
	STAssertTrue(conta.saldo == 0, @"Deve permanecer com 0 de saldo");
}


@end
