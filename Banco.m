#import <Foundation/Foundation.h>
#import "Conta.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSLog(@"Hello, World!");
	
	NSMutableArray * contas = [[NSMutableArray alloc]
							   initWithObjects:
								[[Conta alloc] initWithSaldo:200],
								[[Conta alloc] initWithSaldo:150],
								[[Conta alloc] initWithSaldo:100],
								nil
							   ];
	
	for (Conta * conta in contas) {
		NSLog(@"O saldo da conta é %f", conta.saldo);
	}
	
	Conta * conta = [contas objectAtIndex: 1];
	NSLog(@"O saldo da segunda conta: %f", conta.saldo);
	
	NSLog(@"Classe do array -> %@", [contas class]);
	
	NSString * nome = [[NSString alloc] initWithFormat: @"Jose"];
	NSLog(@"O retain count é %d", nome.retainCount);
	
	Conta * outraConta = [[Conta alloc] initWithSaldo:100];
	outraConta.nome = nome;
	
	NSLog(@"agora o retain count é %d", nome.retainCount);
	
	[nome release];
	[outraConta release];
	
    [pool drain];
    return 0;
}
