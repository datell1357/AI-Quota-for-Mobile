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
public final class nn4 {
    public static final nn4 o;
    public static final nn4 p;
    public static final nn4[] q;
    public static final /* synthetic */ nn4[] r;
    public final int n;

    /* JADX INFO: Fake field, exist only in values array */
    nn4 EF0;

    static {
        go4 go4Var = go4.r;
        nn4 nn4Var = new nn4("DOUBLE", 0, 0, 1, go4Var);
        go4 go4Var2 = go4.q;
        nn4 nn4Var2 = new nn4("FLOAT", 1, 1, 1, go4Var2);
        go4 go4Var3 = go4.p;
        nn4 nn4Var3 = new nn4("INT64", 2, 2, 1, go4Var3);
        nn4 nn4Var4 = new nn4("UINT64", 3, 3, 1, go4Var3);
        go4 go4Var4 = go4.o;
        nn4 nn4Var5 = new nn4("INT32", 4, 4, 1, go4Var4);
        nn4 nn4Var6 = new nn4("FIXED64", 5, 5, 1, go4Var3);
        nn4 nn4Var7 = new nn4("FIXED32", 6, 6, 1, go4Var4);
        go4 go4Var5 = go4.s;
        nn4 nn4Var8 = new nn4("BOOL", 7, 7, 1, go4Var5);
        go4 go4Var6 = go4.t;
        nn4 nn4Var9 = new nn4("STRING", 8, 8, 1, go4Var6);
        go4 go4Var7 = go4.w;
        nn4 nn4Var10 = new nn4("MESSAGE", 9, 9, 1, go4Var7);
        go4 go4Var8 = go4.f113u;
        nn4 nn4Var11 = new nn4("BYTES", 10, 10, 1, go4Var8);
        nn4 nn4Var12 = new nn4("UINT32", 11, 11, 1, go4Var4);
        go4 go4Var9 = go4.v;
        nn4 nn4Var13 = new nn4("ENUM", 12, 12, 1, go4Var9);
        nn4 nn4Var14 = new nn4("SFIXED32", 13, 13, 1, go4Var4);
        nn4 nn4Var15 = new nn4("SFIXED64", 14, 14, 1, go4Var3);
        nn4 nn4Var16 = new nn4("SINT32", 15, 15, 1, go4Var4);
        nn4 nn4Var17 = new nn4("SINT64", 16, 16, 1, go4Var3);
        nn4 nn4Var18 = new nn4("GROUP", 17, 17, 1, go4Var7);
        nn4 nn4Var19 = new nn4("DOUBLE_LIST", 18, 18, 2, go4Var);
        nn4 nn4Var20 = new nn4("FLOAT_LIST", 19, 19, 2, go4Var2);
        nn4 nn4Var21 = new nn4("INT64_LIST", 20, 20, 2, go4Var3);
        nn4 nn4Var22 = new nn4("UINT64_LIST", 21, 21, 2, go4Var3);
        nn4 nn4Var23 = new nn4("INT32_LIST", 22, 22, 2, go4Var4);
        nn4 nn4Var24 = new nn4("FIXED64_LIST", 23, 23, 2, go4Var3);
        nn4 nn4Var25 = new nn4("FIXED32_LIST", 24, 24, 2, go4Var4);
        nn4 nn4Var26 = new nn4("BOOL_LIST", 25, 25, 2, go4Var5);
        nn4 nn4Var27 = new nn4("STRING_LIST", 26, 26, 2, go4Var6);
        nn4 nn4Var28 = new nn4("MESSAGE_LIST", 27, 27, 2, go4Var7);
        nn4 nn4Var29 = new nn4("BYTES_LIST", 28, 28, 2, go4Var8);
        nn4 nn4Var30 = new nn4("UINT32_LIST", 29, 29, 2, go4Var4);
        nn4 nn4Var31 = new nn4("ENUM_LIST", 30, 30, 2, go4Var9);
        nn4 nn4Var32 = new nn4("SFIXED32_LIST", 31, 31, 2, go4Var4);
        nn4 nn4Var33 = new nn4("SFIXED64_LIST", 32, 32, 2, go4Var3);
        nn4 nn4Var34 = new nn4("SINT32_LIST", 33, 33, 2, go4Var4);
        nn4 nn4Var35 = new nn4("SINT64_LIST", 34, 34, 2, go4Var3);
        nn4 nn4Var36 = new nn4("DOUBLE_LIST_PACKED", 35, 35, 3, go4Var);
        o = nn4Var36;
        nn4 nn4Var37 = new nn4("FLOAT_LIST_PACKED", 36, 36, 3, go4Var2);
        nn4 nn4Var38 = new nn4("INT64_LIST_PACKED", 37, 37, 3, go4Var3);
        nn4 nn4Var39 = new nn4("UINT64_LIST_PACKED", 38, 38, 3, go4Var3);
        nn4 nn4Var40 = new nn4("INT32_LIST_PACKED", 39, 39, 3, go4Var4);
        nn4 nn4Var41 = new nn4("FIXED64_LIST_PACKED", 40, 40, 3, go4Var3);
        nn4 nn4Var42 = new nn4("FIXED32_LIST_PACKED", 41, 41, 3, go4Var4);
        nn4 nn4Var43 = new nn4("BOOL_LIST_PACKED", 42, 42, 3, go4Var5);
        nn4 nn4Var44 = new nn4("UINT32_LIST_PACKED", 43, 43, 3, go4Var4);
        nn4 nn4Var45 = new nn4("ENUM_LIST_PACKED", 44, 44, 3, go4Var9);
        nn4 nn4Var46 = new nn4("SFIXED32_LIST_PACKED", 45, 45, 3, go4Var4);
        nn4 nn4Var47 = new nn4("SFIXED64_LIST_PACKED", 46, 46, 3, go4Var3);
        nn4 nn4Var48 = new nn4("SINT32_LIST_PACKED", 47, 47, 3, go4Var4);
        nn4 nn4Var49 = new nn4("SINT64_LIST_PACKED", 48, 48, 3, go4Var3);
        p = nn4Var49;
        r = new nn4[]{nn4Var, nn4Var2, nn4Var3, nn4Var4, nn4Var5, nn4Var6, nn4Var7, nn4Var8, nn4Var9, nn4Var10, nn4Var11, nn4Var12, nn4Var13, nn4Var14, nn4Var15, nn4Var16, nn4Var17, nn4Var18, nn4Var19, nn4Var20, nn4Var21, nn4Var22, nn4Var23, nn4Var24, nn4Var25, nn4Var26, nn4Var27, nn4Var28, nn4Var29, nn4Var30, nn4Var31, nn4Var32, nn4Var33, nn4Var34, nn4Var35, nn4Var36, nn4Var37, nn4Var38, nn4Var39, nn4Var40, nn4Var41, nn4Var42, nn4Var43, nn4Var44, nn4Var45, nn4Var46, nn4Var47, nn4Var48, nn4Var49, new nn4("GROUP_LIST", 49, 49, 2, go4Var7), new nn4("MAP", 50, 50, 4, go4.n)};
        nn4[] nn4VarArrValues = values();
        q = new nn4[nn4VarArrValues.length];
        for (nn4 nn4Var50 : nn4VarArrValues) {
            q[nn4Var50.n] = nn4Var50;
        }
    }

    public nn4(String str, int i, int i2, int i3, go4 go4Var) {
        this.n = i2;
        int i4 = i3 - 1;
        if (i4 == 1 || i4 == 3) {
            go4Var.getClass();
        }
        if (i3 == 1) {
            go4 go4Var2 = go4.n;
            go4Var.ordinal();
        }
    }

    public static nn4[] values() {
        return (nn4[]) r.clone();
    }
}
