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
public final class up4 {
    public static final up4 p;
    public static final up4 q;
    public static final up4 r;
    public static final /* synthetic */ up4[] s;
    public final vp4 n;
    public final int o;

    /* JADX INFO: Fake field, exist only in values array */
    up4 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    up4 EF2;

    /* JADX INFO: Fake field, exist only in values array */
    up4 EF0;

    static {
        up4 up4Var = new up4("DOUBLE", 0, vp4.q, 1);
        up4 up4Var2 = new up4("FLOAT", 1, vp4.p, 5);
        vp4 vp4Var = vp4.o;
        up4 up4Var3 = new up4("INT64", 2, vp4Var, 0);
        up4 up4Var4 = new up4("UINT64", 3, vp4Var, 0);
        vp4 vp4Var2 = vp4.n;
        up4 up4Var5 = new up4("INT32", 4, vp4Var2, 0);
        up4 up4Var6 = new up4("FIXED64", 5, vp4Var, 1);
        up4 up4Var7 = new up4("FIXED32", 6, vp4Var2, 5);
        up4 up4Var8 = new up4("BOOL", 7, vp4.r, 0);
        up4 up4Var9 = new up4("STRING", 8, vp4.s, 2);
        p = up4Var9;
        vp4 vp4Var3 = vp4.v;
        up4 up4Var10 = new up4("GROUP", 9, vp4Var3, 3);
        q = up4Var10;
        up4 up4Var11 = new up4("MESSAGE", 10, vp4Var3, 2);
        r = up4Var11;
        s = new up4[]{up4Var, up4Var2, up4Var3, up4Var4, up4Var5, up4Var6, up4Var7, up4Var8, up4Var9, up4Var10, up4Var11, new up4("BYTES", 11, vp4.t, 2), new up4("UINT32", 12, vp4Var2, 0), new up4("ENUM", 13, vp4.f382u, 0), new up4("SFIXED32", 14, vp4Var2, 5), new up4("SFIXED64", 15, vp4Var, 1), new up4("SINT32", 16, vp4Var2, 0), new up4("SINT64", 17, vp4Var, 0)};
    }

    public up4(String str, int i, vp4 vp4Var, int i2) {
        this.n = vp4Var;
        this.o = i2;
    }

    public static up4[] values() {
        return (up4[]) s.clone();
    }
}
