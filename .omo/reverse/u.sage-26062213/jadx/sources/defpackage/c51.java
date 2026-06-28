package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c51 {
    public static final c51 o;
    public static final c51 p;
    public static final c51[] q;
    public static final /* synthetic */ c51[] r;
    public final int n;

    /* JADX INFO: Fake field, exist only in values array */
    c51 EF0;

    static {
        ru1 ru1Var = ru1.DOUBLE;
        c51 c51Var = new c51("DOUBLE", 0, 0, 1, ru1Var);
        ru1 ru1Var2 = ru1.FLOAT;
        c51 c51Var2 = new c51("FLOAT", 1, 1, 1, ru1Var2);
        ru1 ru1Var3 = ru1.LONG;
        c51 c51Var3 = new c51("INT64", 2, 2, 1, ru1Var3);
        c51 c51Var4 = new c51("UINT64", 3, 3, 1, ru1Var3);
        ru1 ru1Var4 = ru1.INT;
        c51 c51Var5 = new c51("INT32", 4, 4, 1, ru1Var4);
        c51 c51Var6 = new c51("FIXED64", 5, 5, 1, ru1Var3);
        c51 c51Var7 = new c51("FIXED32", 6, 6, 1, ru1Var4);
        ru1 ru1Var5 = ru1.BOOLEAN;
        c51 c51Var8 = new c51("BOOL", 7, 7, 1, ru1Var5);
        ru1 ru1Var6 = ru1.STRING;
        c51 c51Var9 = new c51("STRING", 8, 8, 1, ru1Var6);
        ru1 ru1Var7 = ru1.MESSAGE;
        c51 c51Var10 = new c51("MESSAGE", 9, 9, 1, ru1Var7);
        ru1 ru1Var8 = ru1.BYTE_STRING;
        c51 c51Var11 = new c51("BYTES", 10, 10, 1, ru1Var8);
        c51 c51Var12 = new c51("UINT32", 11, 11, 1, ru1Var4);
        ru1 ru1Var9 = ru1.ENUM;
        c51 c51Var13 = new c51("ENUM", 12, 12, 1, ru1Var9);
        c51 c51Var14 = new c51("SFIXED32", 13, 13, 1, ru1Var4);
        c51 c51Var15 = new c51("SFIXED64", 14, 14, 1, ru1Var3);
        c51 c51Var16 = new c51("SINT32", 15, 15, 1, ru1Var4);
        c51 c51Var17 = new c51("SINT64", 16, 16, 1, ru1Var3);
        c51 c51Var18 = new c51("GROUP", 17, 17, 1, ru1Var7);
        c51 c51Var19 = new c51("DOUBLE_LIST", 18, 18, 2, ru1Var);
        c51 c51Var20 = new c51("FLOAT_LIST", 19, 19, 2, ru1Var2);
        c51 c51Var21 = new c51("INT64_LIST", 20, 20, 2, ru1Var3);
        c51 c51Var22 = new c51("UINT64_LIST", 21, 21, 2, ru1Var3);
        c51 c51Var23 = new c51("INT32_LIST", 22, 22, 2, ru1Var4);
        c51 c51Var24 = new c51("FIXED64_LIST", 23, 23, 2, ru1Var3);
        c51 c51Var25 = new c51("FIXED32_LIST", 24, 24, 2, ru1Var4);
        c51 c51Var26 = new c51("BOOL_LIST", 25, 25, 2, ru1Var5);
        c51 c51Var27 = new c51("STRING_LIST", 26, 26, 2, ru1Var6);
        c51 c51Var28 = new c51("MESSAGE_LIST", 27, 27, 2, ru1Var7);
        c51 c51Var29 = new c51("BYTES_LIST", 28, 28, 2, ru1Var8);
        c51 c51Var30 = new c51("UINT32_LIST", 29, 29, 2, ru1Var4);
        c51 c51Var31 = new c51("ENUM_LIST", 30, 30, 2, ru1Var9);
        c51 c51Var32 = new c51("SFIXED32_LIST", 31, 31, 2, ru1Var4);
        c51 c51Var33 = new c51("SFIXED64_LIST", 32, 32, 2, ru1Var3);
        c51 c51Var34 = new c51("SINT32_LIST", 33, 33, 2, ru1Var4);
        c51 c51Var35 = new c51("SINT64_LIST", 34, 34, 2, ru1Var3);
        c51 c51Var36 = new c51("DOUBLE_LIST_PACKED", 35, 35, 3, ru1Var);
        o = c51Var36;
        c51 c51Var37 = new c51("FLOAT_LIST_PACKED", 36, 36, 3, ru1Var2);
        c51 c51Var38 = new c51("INT64_LIST_PACKED", 37, 37, 3, ru1Var3);
        c51 c51Var39 = new c51("UINT64_LIST_PACKED", 38, 38, 3, ru1Var3);
        c51 c51Var40 = new c51("INT32_LIST_PACKED", 39, 39, 3, ru1Var4);
        c51 c51Var41 = new c51("FIXED64_LIST_PACKED", 40, 40, 3, ru1Var3);
        c51 c51Var42 = new c51("FIXED32_LIST_PACKED", 41, 41, 3, ru1Var4);
        c51 c51Var43 = new c51("BOOL_LIST_PACKED", 42, 42, 3, ru1Var5);
        c51 c51Var44 = new c51("UINT32_LIST_PACKED", 43, 43, 3, ru1Var4);
        c51 c51Var45 = new c51("ENUM_LIST_PACKED", 44, 44, 3, ru1Var9);
        c51 c51Var46 = new c51("SFIXED32_LIST_PACKED", 45, 45, 3, ru1Var4);
        c51 c51Var47 = new c51("SFIXED64_LIST_PACKED", 46, 46, 3, ru1Var3);
        c51 c51Var48 = new c51("SINT32_LIST_PACKED", 47, 47, 3, ru1Var4);
        c51 c51Var49 = new c51("SINT64_LIST_PACKED", 48, 48, 3, ru1Var3);
        p = c51Var49;
        r = new c51[]{c51Var, c51Var2, c51Var3, c51Var4, c51Var5, c51Var6, c51Var7, c51Var8, c51Var9, c51Var10, c51Var11, c51Var12, c51Var13, c51Var14, c51Var15, c51Var16, c51Var17, c51Var18, c51Var19, c51Var20, c51Var21, c51Var22, c51Var23, c51Var24, c51Var25, c51Var26, c51Var27, c51Var28, c51Var29, c51Var30, c51Var31, c51Var32, c51Var33, c51Var34, c51Var35, c51Var36, c51Var37, c51Var38, c51Var39, c51Var40, c51Var41, c51Var42, c51Var43, c51Var44, c51Var45, c51Var46, c51Var47, c51Var48, c51Var49, new c51("GROUP_LIST", 49, 49, 2, ru1Var7), new c51("MAP", 50, 50, 4, ru1.VOID)};
        c51[] c51VarArrValues = values();
        q = new c51[c51VarArrValues.length];
        for (c51 c51Var50 : c51VarArrValues) {
            q[c51Var50.n] = c51Var50;
        }
    }

    public c51(String str, int i, int i2, int i3, ru1 ru1Var) {
        this.n = i2;
        int iF = di0.F(i3);
        if (iF == 1 || iF == 3) {
            ru1Var.getClass();
        }
        if (i3 == 1) {
            ru1Var.ordinal();
        }
    }

    public static c51 valueOf(String str) {
        return (c51) Enum.valueOf(c51.class, str);
    }

    public static c51[] values() {
        return (c51[]) r.clone();
    }
}
