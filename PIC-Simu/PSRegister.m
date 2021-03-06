//
//  PSRegister.m
//  PIC-Simu
//
//  Created by Dennis Stengele on 14/04/14.
//  Copyright (c) 2014 Dennis Stengele. All rights reserved.
//

#import "PSRegister.h"

	// Einzelnes Register
@implementation PSRegister

NSString *stringValue;

@synthesize bit0;
@synthesize bit1;
@synthesize bit2;
@synthesize bit3;
@synthesize bit4;
@synthesize bit5;
@synthesize bit6;
@synthesize bit7;


	// Init-Methode zum Initialisieren aller Variablen
- (id)init {
	self = [super init];
	if (self) {
			// Register mit Wert "0" initilisieren
		self.bit0 = 0;
		self.bit1 = 0;
		self.bit2 = 0;
		self.bit3 = 0;
		self.bit4 = 0;
		self.bit5 = 0;
		self.bit6 = 0;
		self.bit7 = 0;
	}
	return self;
}

	// Setzt RegisterWert auf Basis einer ganzen Zahl
- (void)setRegisterValue:(uint8_t)decimalNumber {
	uint8_t binaryNumber = decimalNumber;
		// Immer das am weitesten Rechts stehende Bit wird gelesen. Dann wird das Bitmuster nach rechts rotiert und wieder das am weitesten rechts stehende Bit gelesen
	self.bit0 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit1 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit2 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit3 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit4 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit5 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit6 = binaryNumber & 0b00000001;
	binaryNumber >>= 1;
	self.bit7 = binaryNumber & 0b00000001;
}

	// Ausgeben des Wertes auf Basis der einzelnen Bits.
- (uint8_t)registerValue {
	return (int)self.bit7*128+(int)self.bit6*64+(int)self.bit5*32+(int)self.bit4*16+(int)self.bit3*8+(int)self.bit2*4+(int)self.bit1*2+(int)self.bit0;
}

	// Methode, die "Beschreibung" des Registers zurückgibt. Hier die Zahl in drei Darstellungen (Hex, Binär und Dezimal)
- (NSString *)description {
	uint8_t regValue = self.registerValue;
	uint8_t numberCopy = regValue;
	
		// Konvertieren der Zahl in binären String für Ausgabe, muss von Hand berechnet werden
	NSMutableString *binaryString = [NSMutableString stringWithFormat:@""];
	for (int i = 0; i < 8; i++) {
			// Prepend "0" or "1", depending on the bit
		[binaryString insertString:((numberCopy & 1) ? @"1" : @"0") atIndex:0];
		numberCopy >>= 1;
	}
	
	NSString *res = [NSString stringWithFormat:@"0x%X - ", regValue]; // Hexadezimaler Wert, direkt mit NSString möglich
	res = [res stringByAppendingString:binaryString];
	res = [res stringByAppendingString:[NSString stringWithFormat:@" - %d", regValue]]; // Dezimalen Wert, auch mit NSString möglich
	return res;
}

	// Ausgabe des Wertes eines einzelnen Bits des Registers
- (BOOL)bitValueForBit:(uint8_t)bitAddress {
	switch (bitAddress) {
		case 0:
			return self.bit0;
		case 1:
			return self.bit1;
		case 2:
			return self.bit2;
		case 3:
			return self.bit3;
		case 4:
			return self.bit4;
		case 5:
			return self.bit5;
		case 6:
			return self.bit6;
		case 7:
			return self.bit7;
		default:
			return false;
	}
}

	// Setzen des Wertes eines einzelnen Bits des Registers
- (void)setBitValueTo:(BOOL)newValue forBit:(uint8_t)bitAddress {
	switch (bitAddress) {
		case 0:
			self.bit0 = newValue;
		case 1:
			self.bit1 = newValue;
		case 2:
			self.bit2 = newValue;
		case 3:
			self.bit3 = newValue;
		case 4:
			self.bit4 = newValue;
		case 5:
			self.bit5 = newValue;
		case 6:
			self.bit6 = newValue;
		case 7:
			self.bit7 = newValue;
	}
}

@end
