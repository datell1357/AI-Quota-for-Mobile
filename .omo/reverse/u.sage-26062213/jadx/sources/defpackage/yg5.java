package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum yg5 {
    /* JADX INFO: Fake field, exist only in values array */
    STRING('s', 1, "-#", true),
    /* JADX INFO: Fake field, exist only in values array */
    BOOLEAN('b', 2, "-", true),
    /* JADX INFO: Fake field, exist only in values array */
    CHAR('c', 3, "-", true),
    /* JADX INFO: Fake field, exist only in values array */
    DECIMAL('d', 4, "-0+ ,(", false),
    /* JADX INFO: Fake field, exist only in values array */
    OCTAL('o', 4, "-#0(", false),
    HEX('x', 4, "-#0(", true),
    /* JADX INFO: Fake field, exist only in values array */
    FLOAT('f', 5, "-#0+ ,(", false),
    /* JADX INFO: Fake field, exist only in values array */
    EXPONENT('e', 5, "-#0+ (", true),
    /* JADX INFO: Fake field, exist only in values array */
    GENERAL('g', 5, "-0+ ,(", true),
    /* JADX INFO: Fake field, exist only in values array */
    EXPONENT_HEX('a', 5, "-#0+ ", true);

    public static final yg5[] s = new yg5[26];
    public final char n;
    public final int o;
    public final int p;
    public final String q;

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        */
    static {
        /*
            yg5 r0 = new yg5
            r3 = 115(0x73, float:1.61E-43)
            r6 = 1
            java.lang.String r1 = "STRING"
            r2 = 0
            r4 = 1
            java.lang.String r5 = "-#"
            r0.<init>(r3, r4, r5, r6)
            yg5 r1 = new yg5
            r4 = 98
            r7 = 1
            java.lang.String r2 = "BOOLEAN"
            r3 = 1
            r5 = 2
            java.lang.String r6 = "-"
            r1.<init>(r4, r5, r6, r7)
            yg5 r2 = new yg5
            r5 = 99
            r8 = 1
            java.lang.String r3 = "CHAR"
            r4 = 2
            r6 = 3
            java.lang.String r7 = "-"
            r2.<init>(r5, r6, r7, r8)
            yg5 r3 = new yg5
            r6 = 100
            r9 = 0
            java.lang.String r4 = "DECIMAL"
            r5 = 3
            r14 = 4
            java.lang.String r8 = "-0+ ,("
            r7 = r14
            r3.<init>(r6, r7, r8, r9)
            yg5 r4 = new yg5
            r13 = 111(0x6f, float:1.56E-43)
            r16 = 0
            java.lang.String r11 = "OCTAL"
            r12 = 4
            java.lang.String r15 = "-#0("
            r10 = r4
            r10.<init>(r13, r14, r15, r16)
            yg5 r5 = new yg5
            r13 = 120(0x78, float:1.68E-43)
            r16 = 1
            java.lang.String r11 = "HEX"
            r12 = 5
            java.lang.String r15 = "-#0("
            r10 = r5
            r10.<init>(r13, r14, r15, r16)
            defpackage.yg5.HEX = r5
            yg5 r6 = new yg5
            r9 = 102(0x66, float:1.43E-43)
            r12 = 0
            java.lang.String r7 = "FLOAT"
            r8 = 6
            r17 = 5
            java.lang.String r11 = "-#0+ ,("
            r10 = r17
            r6.<init>(r9, r10, r11, r12)
            yg5 r7 = new yg5
            r16 = 101(0x65, float:1.42E-43)
            r19 = 1
            java.lang.String r14 = "EXPONENT"
            r15 = 7
            java.lang.String r18 = "-#0+ ("
            r13 = r7
            r13.<init>(r16, r17, r18, r19)
            yg5 r8 = new yg5
            r16 = 103(0x67, float:1.44E-43)
            java.lang.String r14 = "GENERAL"
            r15 = 8
            java.lang.String r18 = "-0+ ,("
            r13 = r8
            r13.<init>(r16, r17, r18, r19)
            yg5 r9 = new yg5
            r16 = 97
            java.lang.String r14 = "EXPONENT_HEX"
            r15 = 9
            java.lang.String r18 = "-#0+ "
            r13 = r9
            r13.<init>(r16, r17, r18, r19)
            yg5[] r0 = new defpackage.yg5[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9}
            defpackage.yg5.t = r0
            r0 = 26
            yg5[] r0 = new defpackage.yg5[r0]
            defpackage.yg5.s = r0
            yg5[] r0 = values()
            int r1 = r0.length
            r2 = 0
        La7:
            if (r2 >= r1) goto Lb8
            r3 = r0[r2]
            char r4 = r3.n
            r4 = r4 | 32
            int r4 = r4 + (-97)
            yg5[] r5 = defpackage.yg5.s
            r5[r4] = r3
            int r2 = r2 + 1
            goto La7
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yg5.<clinit>():void");
    }

    yg5(char c, int i, String str, boolean z) {
        this.n = c;
        this.o = i;
        zg5 zg5Var = zg5.e;
        int i2 = true != z ? 0 : 128;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int iCharAt = ((int) ((zg5.d >>> ((str.charAt(i3) - ' ') * 3)) & 7)) - 1;
            if (iCharAt < 0) {
                k21.f("invalid flags: ".concat(str));
                throw null;
            }
            i2 |= 1 << iCharAt;
        }
        this.p = i2;
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 1);
        sb.append("%");
        sb.append(c);
        this.q = sb.toString();
    }
}
