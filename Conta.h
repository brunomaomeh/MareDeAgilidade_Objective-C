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
	NSString * nome;
}

@property (readonly, nonatomic) float saldo;
@property (retain, nonatomic) NSString * nome;

- (BOOL) depositar: (float) valor;
- (id) initWithSaldo: (float) valor;
- (BOOL) sacar:(float)valor;
- (BOOL) transferir: (float) valor para: (Conta *) destino;

@end
