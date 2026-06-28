package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
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
public class pf4 {
    public static final lf4 p;
    public static final mf4 q;
    public static final nf4 r;
    public static final /* synthetic */ pf4[] s;
    public final qf4 n;
    public final int o;

    /* JADX INFO: Fake field, exist only in values array */
    pf4 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    pf4 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    pf4 EF2;

    static {
        pf4 pf4Var = new pf4("DOUBLE", 0, qf4.DOUBLE, 1);
        pf4 pf4Var2 = new pf4("FLOAT", 1, qf4.FLOAT, 5);
        qf4 qf4Var = qf4.LONG;
        pf4 pf4Var3 = new pf4("INT64", 2, qf4Var, 0);
        pf4 pf4Var4 = new pf4("UINT64", 3, qf4Var, 0);
        qf4 qf4Var2 = qf4.INT;
        pf4 pf4Var5 = new pf4("INT32", 4, qf4Var2, 0);
        pf4 pf4Var6 = new pf4("FIXED64", 5, qf4Var, 1);
        pf4 pf4Var7 = new pf4("FIXED32", 6, qf4Var2, 5);
        pf4 pf4Var8 = new pf4("BOOL", 7, qf4.BOOLEAN, 0);
        lf4 lf4Var = new lf4("STRING", 8, qf4.STRING, 2);
        p = lf4Var;
        qf4 qf4Var3 = qf4.MESSAGE;
        mf4 mf4Var = new mf4("GROUP", 9, qf4Var3, 3);
        q = mf4Var;
        nf4 nf4Var = new nf4("MESSAGE", 10, qf4Var3, 2);
        r = nf4Var;
        s = new pf4[]{pf4Var, pf4Var2, pf4Var3, pf4Var4, pf4Var5, pf4Var6, pf4Var7, pf4Var8, lf4Var, mf4Var, nf4Var, new of4("BYTES", 11, qf4.BYTE_STRING, 2), new pf4("UINT32", 12, qf4Var2, 0), new pf4("ENUM", 13, qf4.ENUM, 0), new pf4("SFIXED32", 14, qf4Var2, 5), new pf4("SFIXED64", 15, qf4Var, 1), new pf4("SINT32", 16, qf4Var2, 0), new pf4("SINT64", 17, qf4Var, 0)};
    }

    public pf4(String str, int i, qf4 qf4Var, int i2) {
        this.n = qf4Var;
        this.o = i2;
    }

    public static pf4 valueOf(String str) {
        return (pf4) Enum.valueOf(pf4.class, str);
    }

    public static pf4[] values() {
        return (pf4[]) s.clone();
    }
}
