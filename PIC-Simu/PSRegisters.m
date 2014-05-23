//
//  PSRegisters.m
//  PIC-Simu
//
//  Created by Dennis Stengele on 07/04/14.
//  Copyright (c) 2014 Dennis Stengele. All rights reserved.
//

#import "PSRegisters.h"
#import "PSRegister.h"

@implementation PSRegisters

@synthesize w;

	// Bank 0
@synthesize indf;
@synthesize tmr0;
@synthesize pcl;
@synthesize status;
@synthesize fsr;
@synthesize porta;
@synthesize portb;
@synthesize eedata;
@synthesize eeadr;
@synthesize pclath;
@synthesize intcon;

	// Bank 1
@synthesize option;
@synthesize trisa;
@synthesize trisb;
@synthesize eecon1;
@synthesize eecon2;

	// GPR
@synthesize reg0C;
@synthesize reg0D;
@synthesize reg0E;
@synthesize reg0F;

@synthesize reg10;
@synthesize reg11;
@synthesize reg12;
@synthesize reg13;
@synthesize reg14;
@synthesize reg15;
@synthesize reg16;
@synthesize reg17;
@synthesize reg18;
@synthesize reg19;
@synthesize reg1A;
@synthesize reg1B;
@synthesize reg1C;
@synthesize reg1D;
@synthesize reg1E;
@synthesize reg1F;

@synthesize reg20;
@synthesize reg21;
@synthesize reg22;
@synthesize reg23;
@synthesize reg24;
@synthesize reg25;
@synthesize reg26;
@synthesize reg27;
@synthesize reg28;
@synthesize reg29;
@synthesize reg2A;
@synthesize reg2B;
@synthesize reg2C;
@synthesize reg2D;
@synthesize reg2E;
@synthesize reg2F;

@synthesize reg30;
@synthesize reg31;
@synthesize reg32;
@synthesize reg33;
@synthesize reg34;
@synthesize reg35;
@synthesize reg36;
@synthesize reg37;
@synthesize reg38;
@synthesize reg39;
@synthesize reg3A;
@synthesize reg3B;
@synthesize reg3C;
@synthesize reg3D;
@synthesize reg3E;
@synthesize reg3F;

@synthesize reg40;
@synthesize reg41;
@synthesize reg42;
@synthesize reg43;
@synthesize reg44;
@synthesize reg45;
@synthesize reg46;
@synthesize reg47;
@synthesize reg48;
@synthesize reg49;
@synthesize reg4A;
@synthesize reg4B;
@synthesize reg4C;
@synthesize reg4D;
@synthesize reg4E;
@synthesize reg4F;


- (id)init {
	self = [super init];

	if (self) {
			// SFR
		self.w	= [[PSRegister alloc] init];
		self.indf	= [[PSRegister alloc] init];
		self.tmr0	= [[PSRegister alloc] init];
		self.pcl	= [[PSRegister alloc] init];
		self.status = [[PSRegister alloc] init];
		self.fsr	= [[PSRegister alloc] init];
		self.porta	= [[PSRegister alloc] init];
		self.portb	= [[PSRegister alloc] init];
		self.eedata = [[PSRegister alloc] init];
		self.eeadr	= [[PSRegister alloc] init];
		self.pclath = [[PSRegister alloc] init];
		self.intcon = [[PSRegister alloc] init];
		self.option = [[PSRegister alloc] init];
		self.trisa	= [[PSRegister alloc] init];
		self.trisb	= [[PSRegister alloc] init];
		self.eecon1 = [[PSRegister alloc] init];
		self.eecon2 = [[PSRegister alloc] init];

			// GPR
		self.reg0C	= [[PSRegister alloc] init];
		self.reg0D	= [[PSRegister alloc] init];
		self.reg0E	= [[PSRegister alloc] init];
		self.reg0F	= [[PSRegister alloc] init];

		self.reg10	= [[PSRegister alloc] init];
		self.reg11	= [[PSRegister alloc] init];
		self.reg12	= [[PSRegister alloc] init];
		self.reg13	= [[PSRegister alloc] init];
		self.reg14	= [[PSRegister alloc] init];
		self.reg15	= [[PSRegister alloc] init];
		self.reg16	= [[PSRegister alloc] init];
		self.reg17	= [[PSRegister alloc] init];
		self.reg18	= [[PSRegister alloc] init];
		self.reg19	= [[PSRegister alloc] init];
		self.reg1A	= [[PSRegister alloc] init];
		self.reg1B	= [[PSRegister alloc] init];
		self.reg1C	= [[PSRegister alloc] init];
		self.reg1D	= [[PSRegister alloc] init];
		self.reg1E	= [[PSRegister alloc] init];
		self.reg1F	= [[PSRegister alloc] init];

		self.reg20	= [[PSRegister alloc] init];
		self.reg21	= [[PSRegister alloc] init];
		self.reg22	= [[PSRegister alloc] init];
		self.reg23	= [[PSRegister alloc] init];
		self.reg24	= [[PSRegister alloc] init];
		self.reg25	= [[PSRegister alloc] init];
		self.reg26	= [[PSRegister alloc] init];
		self.reg27	= [[PSRegister alloc] init];
		self.reg28	= [[PSRegister alloc] init];
		self.reg29	= [[PSRegister alloc] init];
		self.reg2A	= [[PSRegister alloc] init];
		self.reg2B	= [[PSRegister alloc] init];
		self.reg2C	= [[PSRegister alloc] init];
		self.reg2D	= [[PSRegister alloc] init];
		self.reg2E	= [[PSRegister alloc] init];
		self.reg2F	= [[PSRegister alloc] init];

		self.reg30	= [[PSRegister alloc] init];
		self.reg31	= [[PSRegister alloc] init];
		self.reg32	= [[PSRegister alloc] init];
		self.reg33	= [[PSRegister alloc] init];
		self.reg34	= [[PSRegister alloc] init];
		self.reg35	= [[PSRegister alloc] init];
		self.reg36	= [[PSRegister alloc] init];
		self.reg37	= [[PSRegister alloc] init];
		self.reg38	= [[PSRegister alloc] init];
		self.reg39	= [[PSRegister alloc] init];
		self.reg3A	= [[PSRegister alloc] init];
		self.reg3B	= [[PSRegister alloc] init];
		self.reg3C	= [[PSRegister alloc] init];
		self.reg3D	= [[PSRegister alloc] init];
		self.reg3E	= [[PSRegister alloc] init];
		self.reg3F	= [[PSRegister alloc] init];

		self.reg40	= [[PSRegister alloc] init];
		self.reg41	= [[PSRegister alloc] init];
		self.reg42	= [[PSRegister alloc] init];
		self.reg43	= [[PSRegister alloc] init];
		self.reg44	= [[PSRegister alloc] init];
		self.reg45	= [[PSRegister alloc] init];
		self.reg46	= [[PSRegister alloc] init];
		self.reg47	= [[PSRegister alloc] init];
		self.reg48	= [[PSRegister alloc] init];
		self.reg49	= [[PSRegister alloc] init];
		self.reg4A	= [[PSRegister alloc] init];
		self.reg4B	= [[PSRegister alloc] init];
		self.reg4C	= [[PSRegister alloc] init];
		self.reg4D	= [[PSRegister alloc] init];
		self.reg4E	= [[PSRegister alloc] init];
		self.reg4F	= [[PSRegister alloc] init];
	}
	return self;
}

- (void)setRegister:(uint16_t)registerAddress toValue:(uint16_t)newValue {
	PSRegister *reg = [self registerforAddress:registerAddress];
	[reg setRegisterValue:newValue];
}

- (PSRegister *)registerforAddress:(uint16_t)registerAddress {
	switch (registerAddress) {
		case 0x00:
		case 0x80: {
			PSRegister *indirect = [self registerforAddress:self.fsr.registerValue];
			return indirect;
		}
			
		case 0x81:
			return self.option;

		case 0x01:
			return self.tmr0;

		case 0x02:
		case 0x82:
			return self.pcl;

		case 0x03:
		case 0x83:
			return self.status;

		case 0x04:
		case 0x84:
			return self.fsr;

		case 0x05:
			return self.porta;
			
		case 0x85:
			return self.trisa;

		case 0x06:
			return self.portb;
			
		case 0x86:
			return self.trisb;

		case 0x08:
			return self.eedata;
			
		case 0x88:
			return self.eecon1;

		case 0x09:
			return self.eeadr;
			
		case 0x89:
			return self.eecon2;

		case 0x0A:
		case 0x8A:
			return self.pclath;

		case 0x0B:
		case 0x8B:
			return self.intcon;


		case 0x0C:
			return self.reg0C;

		case 0x0D:
			return self.reg0D;

		case 0x0E:
			return self.reg0E;

		case 0x0F:
			return self.reg0F;

		case 0x10:
			return self.reg10;

		case 0x11:
			return self.reg11;

		case 0x12:
			return self.reg12;

		case 0x13:
			return self.reg13;

		case 0x14:
			return self.reg14;

		case 0x15:
			return self.reg15;

		case 0x16:
			return self.reg16;

		case 0x17:
			return self.reg17;

		case 0x18:
			return self.reg18;

		case 0x19:
			return self.reg19;

		case 0x1A:
			return self.reg1A;

		case 0x1B:
			return self.reg1B;

		case 0x1C:
			return self.reg1C;

		case 0x1D:
			return self.reg1D;

		case 0x1E:
			return self.reg1E;

		case 0x1F:
			return self.reg1F;

		case 0x20:
			return self.reg20;

		case 0x21:
			return self.reg21;

		case 0x22:
			return self.reg22;

		case 0x23:
			return self.reg23;

		case 0x24:
			return self.reg24;

		case 0x25:
			return self.reg25;

		case 0x26:
			return self.reg26;

		case 0x27:
			return self.reg27;

		case 0x28:
			return self.reg28;

		case 0x29:
			return self.reg29;

		case 0x2A:
			return self.reg2A;

		case 0x2B:
			return self.reg2B;

		case 0x2C:
			return self.reg2C;

		case 0x2D:
			return self.reg2D;

		case 0x2E:
			return self.reg2E;

		case 0x2F:
			return self.reg2F;

		case 0x30:
			return self.reg30;

		case 0x31:
			return self.reg31;

		case 0x32:
			return self.reg32;

		case 0x33:
			return self.reg33;

		case 0x34:
			return self.reg34;

		case 0x35:
			return self.reg35;

		case 0x36:
			return self.reg36;

		case 0x37:
			return self.reg37;

		case 0x38:
			return self.reg38;

		case 0x39:
			return self.reg39;

		case 0x3A:
			return self.reg3A;

		case 0x3B:
			return self.reg3B;

		case 0x3C:
			return self.reg3C;

		case 0x3D:
			return self.reg3D;

		case 0x3E:
			return self.reg3E;

		case 0x3F:
			return self.reg3F;

		case 0x40:
			return self.reg40;

		case 0x41:
			return self.reg41;

		case 0x42:
			return self.reg42;

		case 0x43:
			return self.reg43;

		case 0x44:
			return self.reg44;

		case 0x45:
			return self.reg45;

		case 0x46:
			return self.reg46;

		case 0x47:
			return self.reg47;

		case 0x48:
			return self.reg48;

		case 0x49:
			return self.reg49;

		case 0x4A:
			return self.reg4A;

		case 0x4B:
			return self.reg4B;

		case 0x4C:
			return self.reg4C;

		case 0x4D:
			return self.reg4D;

		case 0x4E:
			return self.reg4E;

		case 0x4F:
			return self.reg4F;

		default:
			return 0;
	}
}

- (BOOL)bitValueForAddress:(uint16_t)registerAddress andBit:(uint16_t)bitAddress {
	PSRegister *reg = [self registerforAddress:registerAddress];
	switch (bitAddress) {
		case 0:
			return reg.bit0;
		case 1:
			return reg.bit1;
		case 2:
			return reg.bit2;
		case 3:
			return reg.bit3;
		case 4:
			return reg.bit4;
		case 5:
			return reg.bit5;
		case 6:
			return reg.bit6;
		case 7:
			return reg.bit7;
		default:
			return false;
	}
}

- (uint16_t)pc {
	uint16_t res =
	   (self.pclath.bit4 * 4096)
	+  (self.pclath.bit3 * 2048)
	+  (self.pclath.bit2 * 1024)
	+  (self.pclath.bit1 * 512)
	+  (self.pclath.bit0 * 256)
	+  (self.pcl.   bit7 * 128)
	+  (self.pcl.   bit6 * 64)
	+  (self.pcl.   bit5 * 32)
	+  (self.pcl.   bit4 * 16)
	+  (self.pcl.   bit3 * 8)
	+  (self.pcl.   bit2 * 4)
	+  (self.pcl.   bit1 * 2)
	+  (self.pcl.   bit0);
	
	NSLog(@"Current Program Counter: %d", res);
	return res;
}

- (void)setPc:(uint16_t)newPc {
	uint16_t foo = newPc & 0b0001111111111111;
	uint16_t high = foo &  0b1111111100000000;
	uint16_t low = foo &   0b0000000011111111;
	[self.pcl setRegisterValue:low];
	[self.pclath setRegisterValue:high];
}

- (void)incrementPc {
	uint16_t temp = [self pc];
	temp++;
	[self setPc:temp];
}
@end
