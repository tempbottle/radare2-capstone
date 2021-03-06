[CCode (cprefix="CS_")]
namespace Capstone {
	[CCode (cname="cs_arm", cheader_filename="arm.h")]
	public struct ARM {
		ArmCC cc;
		bool update_flags;
		bool writeback;
		uint8 op_count;
		ArmOp operands[36];
	}

	[CCode (cname="arm_shifter", cprefix="ARM_SFT_", cheader_filename="arm.h")]
	public enum ArmShifter {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_shifter
		 */
		INVALID = 0,
		ASR = 1,
		LSL = 2,
		LSR = 3,
		ROR = 4,
		RRX = 5,
		ASR_REG = 6,
		LSL_REG = 7,
		LSR_REG = 8,
		ROR_REG = 9,
		RRX_REG = 10
	}

	[CCode (cname="arm_cc", cprefix="ARM_CC_", cheader_filename="arm.h")]
	public enum ArmCC {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_cc
		 */
		INVALID = 0,
		EQ = 1,
		NE = 2,
		HS = 3,
		LO = 4,
		MI = 5,
		PL = 6,
		VS = 7,
		VC = 8,
		HI = 9,
		LS = 10,
		GE = 11,
		LT = 12,
		GT = 13,
		LE = 14,
		AL = 15,
	}

	[CCode (cname="")]
	public struct ArmShift {
		ArmShifter type;
		uint value;
	}

	[CCode (cname="cs_arm_op", cheader_filename="arm.h")]
	public struct ArmOp {
		ArmShift shift;
		ArmOpType type;
		// union
		uint reg;
		uint imm;
		double fp;
		ArmOpMem mem;
	}

	[CCode (cname="arm_reg", cprefix="ARM_OP_", cheader_filename="arm.h")]
	public enum ArmOpType {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_op_type;
		 */
		INVALID = 0,
		REG = 1,
		CIMM = 2,
		PIMM = 3,
		IMM = 4,
		FP = 5,
		MEM = 6
	}

	[CCode (cname="arm_op_mem", cheader_filename="arm.h")]
	public struct ArmOpMem {
		uint base;
		uint index;
		int scale;
		int disp;
	}

	[CCode (cname="arm_insn", cprefix="ARM_INS_", cheader_filename="arm.h")]
	public enum ArmInsn {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_insn;
		 */
		INVALID = 0,
		ADC = 1,
		ADD = 2,
		ADR = 3,
		AESD = 4,
		AESE = 5,
		AESIMC = 6,
		AESMC = 7,
		AND = 8,
		BFC = 9,
		BFI = 10,
		BIC = 11,
		BKPT = 12,
		BL = 13,
		BLX = 14,
		BX = 15,
		BXJ = 16,
		B = 17,
		CDP = 18,
		CDP2 = 19,
		CLREX = 20,
		CLZ = 21,
		CMN = 22,
		CMP = 23,
		CPS = 24,
		CRC32B = 25,
		CRC32CB = 26,
		CRC32CH = 27,
		CRC32CW = 28,
		CRC32H = 29,
		CRC32W = 30,
		DBG = 31,
		DMB = 32,
		DSB = 33,
		EOR = 34,
		VMOV = 35,
		FLDMDBX = 36,
		FLDMIAX = 37,
		VMRS = 38,
		FSTMDBX = 39,
		FSTMIAX = 40,
		HINT = 41,
		HLT = 42,
		ISB = 43,
		LDA = 44,
		LDAB = 45,
		LDAEX = 46,
		LDAEXB = 47,
		LDAEXD = 48,
		LDAEXH = 49,
		LDAH = 50,
		LDC2L = 51,
		LDC2 = 52,
		LDCL = 53,
		LDC = 54,
		LDMDA = 55,
		LDMDB = 56,
		LDM = 57,
		LDMIB = 58,
		LDRBT = 59,
		LDRB = 60,
		LDRD = 61,
		LDREX = 62,
		LDREXB = 63,
		LDREXD = 64,
		LDREXH = 65,
		LDRH = 66,
		LDRHT = 67,
		LDRSB = 68,
		LDRSBT = 69,
		LDRSH = 70,
		LDRSHT = 71,
		LDRT = 72,
		LDR = 73,
		MCR = 74,
		MCR2 = 75,
		MCRR = 76,
		MCRR2 = 77,
		MLA = 78,
		MLS = 79,
		MOV = 80,
		MOVT = 81,
		MOVW = 82,
		MRC = 83,
		MRC2 = 84,
		MRRC = 85,
		MRRC2 = 86,
		MRS = 87,
		MSR = 88,
		MUL = 89,
		MVN = 90,
		ORR = 91,
		PKHBT = 92,
		PKHTB = 93,
		PLDW = 94,
		PLD = 95,
		PLI = 96,
		QADD = 97,
		QADD16 = 98,
		QADD8 = 99,
		QASX = 100,
		QDADD = 101,
		QDSUB = 102,
		QSAX = 103,
		QSUB = 104,
		QSUB16 = 105,
		QSUB8 = 106,
		RBIT = 107,
		REV = 108,
		REV16 = 109,
		REVSH = 110,
		RFEDA = 111,
		RFEDB = 112,
		RFEIA = 113,
		RFEIB = 114,
		RSB = 115,
		RSC = 116,
		SADD16 = 117,
		SADD8 = 118,
		SASX = 119,
		SBC = 120,
		SBFX = 121,
		SDIV = 122,
		SEL = 123,
		SETEND = 124,
		SHA1C = 125,
		SHA1H = 126,
		SHA1M = 127,
		SHA1P = 128,
		SHA1SU0 = 129,
		SHA1SU1 = 130,
		SHA256H = 131,
		SHA256H2 = 132,
		SHA256SU0 = 133,
		SHA256SU1 = 134,
		SHADD16 = 135,
		SHADD8 = 136,
		SHASX = 137,
		SHSAX = 138,
		SHSUB16 = 139,
		SHSUB8 = 140,
		SMC = 141,
		SMLABB = 142,
		SMLABT = 143,
		SMLAD = 144,
		SMLADX = 145,
		SMLAL = 146,
		SMLALBB = 147,
		SMLALBT = 148,
		SMLALD = 149,
		SMLALDX = 150,
		SMLALTB = 151,
		SMLALTT = 152,
		SMLATB = 153,
		SMLATT = 154,
		SMLAWB = 155,
		SMLAWT = 156,
		SMLSD = 157,
		SMLSDX = 158,
		SMLSLD = 159,
		SMLSLDX = 160,
		SMMLA = 161,
		SMMLAR = 162,
		SMMLS = 163,
		SMMLSR = 164,
		SMMUL = 165,
		SMMULR = 166,
		SMUAD = 167,
		SMUADX = 168,
		SMULBB = 169,
		SMULBT = 170,
		SMULL = 171,
		SMULTB = 172,
		SMULTT = 173,
		SMULWB = 174,
		SMULWT = 175,
		SMUSD = 176,
		SMUSDX = 177,
		SRSDA = 178,
		SRSDB = 179,
		SRSIA = 180,
		SRSIB = 181,
		SSAT = 182,
		SSAT16 = 183,
		SSAX = 184,
		SSUB16 = 185,
		SSUB8 = 186,
		STC2L = 187,
		STC2 = 188,
		STCL = 189,
		STC = 190,
		STL = 191,
		STLB = 192,
		STLEX = 193,
		STLEXB = 194,
		STLEXD = 195,
		STLEXH = 196,
		STLH = 197,
		STMDA = 198,
		STMDB = 199,
		STM = 200,
		STMIB = 201,
		STRBT = 202,
		STRB = 203,
		STRD = 204,
		STREX = 205,
		STREXB = 206,
		STREXD = 207,
		STREXH = 208,
		STRH = 209,
		STRHT = 210,
		STRT = 211,
		STR = 212,
		SUB = 213,
		SVC = 214,
		SWP = 215,
		SWPB = 216,
		SXTAB = 217,
		SXTAB16 = 218,
		SXTAH = 219,
		SXTB = 220,
		SXTB16 = 221,
		SXTH = 222,
		TEQ = 223,
		TRAP = 224,
		TST = 225,
		UADD16 = 226,
		UADD8 = 227,
		UASX = 228,
		UBFX = 229,
		UDIV = 230,
		UHADD16 = 231,
		UHADD8 = 232,
		UHASX = 233,
		UHSAX = 234,
		UHSUB16 = 235,
		UHSUB8 = 236,
		UMAAL = 237,
		UMLAL = 238,
		UMULL = 239,
		UQADD16 = 240,
		UQADD8 = 241,
		UQASX = 242,
		UQSAX = 243,
		UQSUB16 = 244,
		UQSUB8 = 245,
		USAD8 = 246,
		USADA8 = 247,
		USAT = 248,
		USAT16 = 249,
		USAX = 250,
		USUB16 = 251,
		USUB8 = 252,
		UXTAB = 253,
		UXTAB16 = 254,
		UXTAH = 255,
		UXTB = 256,
		UXTB16 = 257,
		UXTH = 258,
		VABAL = 259,
		VABA = 260,
		VABDL = 261,
		VABD = 262,
		VABS = 263,
		VACGE = 264,
		VACGT = 265,
		VADD = 266,
		VADDHN = 267,
		VADDL = 268,
		VADDW = 269,
		VAND = 270,
		VBIC = 271,
		VBIF = 272,
		VBIT = 273,
		VBSL = 274,
		VCEQ = 275,
		VCGE = 276,
		VCGT = 277,
		VCLS = 278,
		VCLZ = 279,
		VCMP = 280,
		VCMPE = 281,
		VCNT = 282,
		VCVTA = 283,
		VCVTB = 284,
		VCVT = 285,
		VCVTM = 286,
		VCVTN = 287,
		VCVTP = 288,
		VCVTT = 289,
		VDIV = 290,
		VDUP = 291,
		VEOR = 292,
		VEXT = 293,
		VFMA = 294,
		VFMS = 295,
		VFNMA = 296,
		VFNMS = 297,
		VHADD = 298,
		VHSUB = 299,
		VLD1 = 300,
		VLD2 = 301,
		VLD3 = 302,
		VLD4 = 303,
		VLDMDB = 304,
		VLDMIA = 305,
		VLDR = 306,
		VMAXNM = 307,
		VMAX = 308,
		VMINNM = 309,
		VMIN = 310,
		VMLA = 311,
		VMLAL = 312,
		VMLS = 313,
		VMLSL = 314,
		VMOVL = 315,
		VMOVN = 316,
		VMSR = 317,
		VMUL = 318,
		VMULL = 319,
		VMVN = 320,
		VNEG = 321,
		VNMLA = 322,
		VNMLS = 323,
		VNMUL = 324,
		VORN = 325,
		VORR = 326,
		VPADAL = 327,
		VPADDL = 328,
		VPADD = 329,
		VPMAX = 330,
		VPMIN = 331,
		VQABS = 332,
		VQADD = 333,
		VQDMLAL = 334,
		VQDMLSL = 335,
		VQDMULH = 336,
		VQDMULL = 337,
		VQMOVUN = 338,
		VQMOVN = 339,
		VQNEG = 340,
		VQRDMULH = 341,
		VQRSHL = 342,
		VQRSHRN = 343,
		VQRSHRUN = 344,
		VQSHL = 345,
		VQSHLU = 346,
		VQSHRN = 347,
		VQSHRUN = 348,
		VQSUB = 349,
		VRADDHN = 350,
		VRECPE = 351,
		VRECPS = 352,
		VREV16 = 353,
		VREV32 = 354,
		VREV64 = 355,
		VRHADD = 356,
		VRINTA = 357,
		VRINTM = 358,
		VRINTN = 359,
		VRINTP = 360,
		VRINTR = 361,
		VRINTX = 362,
		VRINTZ = 363,
		VRSHL = 364,
		VRSHRN = 365,
		VRSHR = 366,
		VRSQRTE = 367,
		VRSQRTS = 368,
		VRSRA = 369,
		VRSUBHN = 370,
		VSELEQ = 371,
		VSELGE = 372,
		VSELGT = 373,
		VSELVS = 374,
		VSHLL = 375,
		VSHL = 376,
		VSHRN = 377,
		VSHR = 378,
		VSLI = 379,
		VSQRT = 380,
		VSRA = 381,
		VSRI = 382,
		VST1 = 383,
		VST2 = 384,
		VST3 = 385,
		VST4 = 386,
		VSTMDB = 387,
		VSTMIA = 388,
		VSTR = 389,
		VSUB = 390,
		VSUBHN = 391,
		VSUBL = 392,
		VSUBW = 393,
		VSWP = 394,
		VTBL = 395,
		VTBX = 396,
		VCVTR = 397,
		VTRN = 398,
		VTST = 399,
		VUZP = 400,
		VZIP = 401,
		ADDW = 402,
		ASR = 403,
		DCPS1 = 404,
		DCPS2 = 405,
		DCPS3 = 406,
		IT = 407,
		LSL = 408,
		LSR = 409,
		ORN = 410,
		ROR = 411,
		RRX = 412,
		SUBS = 413,
		SUBW = 414,
		TBB = 415,
		TBH = 416,
		CBNZ = 417,
		CBZ = 418,
		MOVS = 419,
		POP = 420,
		PUSH = 421,
		MAX = 422,
	}

	[CCode (cname="arm_reg", cprefix="ARM_REG_", cheader_filename="arm.h")]
	public enum ArmReg {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_reg;
		 */
		INVALID = 0,
		APSR = 1,
		APSR_NZCV = 2,
		CPSR = 3,
		FPEXC = 4,
		FPINST = 5,
		FPSCR = 6,
		FPSCR_NZCV = 7,
		FPSID = 8,
		ITSTATE = 9,
		LR = 10,
		PC = 11,
		SP = 12,
		SPSR = 13,
		D0 = 14,
		D1 = 15,
		D2 = 16,
		D3 = 17,
		D4 = 18,
		D5 = 19,
		D6 = 20,
		D7 = 21,
		D8 = 22,
		D9 = 23,
		D10 = 24,
		D11 = 25,
		D12 = 26,
		D13 = 27,
		D14 = 28,
		D15 = 29,
		D16 = 30,
		D17 = 31,
		D18 = 32,
		D19 = 33,
		D20 = 34,
		D21 = 35,
		D22 = 36,
		D23 = 37,
		D24 = 38,
		D25 = 39,
		D26 = 40,
		D27 = 41,
		D28 = 42,
		D29 = 43,
		D30 = 44,
		D31 = 45,
		FPINST2 = 46,
		MVFR0 = 47,
		MVFR1 = 48,
		MVFR2 = 49,
		Q0 = 50,
		Q1 = 51,
		Q2 = 52,
		Q3 = 53,
		Q4 = 54,
		Q5 = 55,
		Q6 = 56,
		Q7 = 57,
		Q8 = 58,
		Q9 = 59,
		Q10 = 60,
		Q11 = 61,
		Q12 = 62,
		Q13 = 63,
		Q14 = 64,
		Q15 = 65,
		R0 = 66,
		R1 = 67,
		R2 = 68,
		R3 = 69,
		R4 = 70,
		R5 = 71,
		R6 = 72,
		R7 = 73,
		R8 = 74,
		R9 = 75,
		R10 = 76,
		R11 = 77,
		R12 = 78,
		S0 = 79,
		S1 = 80,
		S2 = 81,
		S3 = 82,
		S4 = 83,
		S5 = 84,
		S6 = 85,
		S7 = 86,
		S8 = 87,
		S9 = 88,
		S10 = 89,
		S11 = 90,
		S12 = 91,
		S13 = 92,
		S14 = 93,
		S15 = 94,
		S16 = 95,
		S17 = 96,
		S18 = 97,
		S19 = 98,
		S20 = 99,
		S21 = 100,
		S22 = 101,
		S23 = 102,
		S24 = 103,
		S25 = 104,
		S26 = 105,
		S27 = 106,
		S28 = 107,
		S29 = 108,
		S30 = 109,
		S31 = 110,
		MAX = 111,

		R13 = SP,
		R14 = LR,
		R15 = PC,

		SB = R9,
		SL = R10,
		FP = R11,
		IP = R12
	}

	[CCode (cname="arm_insn_group", cprefix="ARM_GRP_", cheader_filename="arm.h")]
	public enum ArmInsnGroup {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js arm arm_insn_group;
		 */
		INVALID = 0,
		CRYPTO = 1,
		DATABARRIER = 2,
		DIVIDE = 3,
		FPARMV8 = 4,
		MULTPRO = 5,
		NEON = 6,
		T2EXTRACTPACK = 7,
		THUMB2DSP = 8,
		TRUSTZONE = 9,
		V4T = 10,
		V5T = 11,
		V5TE = 12,
		V6 = 13,
		V6T2 = 14,
		V7 = 15,
		V8 = 16,
		VFP2 = 17,
		VFP3 = 18,
		VFP4 = 19,
		ARM = 20,
		MCLASS = 21,
		NOTMCLASS = 22,
		THUMB = 23,
		THUMB1ONLY = 24,
		THUMB2 = 25,
		PREV8 = 26,
		FPVMLX = 27,
		MULOPS = 28,
		CRC = 29,
		DPVFP = 30,
		V6M = 31,
		JUMP = 32,
		MAX = 33
	}
}
