package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ay2 extends sg1 {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    public static final int BYTES_FIELD_NUMBER = 8;
    private static final ay2 DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile at2 PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int valueCase_ = 0;
    private Object value_;

    static {
        ay2 ay2Var = new ay2();
        DEFAULT_INSTANCE = ay2Var;
        sg1.j(ay2.class, ay2Var);
    }

    public static zx2 D() {
        return (zx2) ((qg1) DEFAULT_INSTANCE.c(5));
    }

    public static void l(ay2 ay2Var, long j) {
        ay2Var.valueCase_ = 4;
        ay2Var.value_ = Long.valueOf(j);
    }

    public static void m(ay2 ay2Var, String str) {
        ay2Var.getClass();
        ay2Var.valueCase_ = 5;
        ay2Var.value_ = str;
    }

    public static void n(ay2 ay2Var, yx2 yx2Var) {
        ay2Var.getClass();
        ay2Var.value_ = yx2Var;
        ay2Var.valueCase_ = 6;
    }

    public static void o(ay2 ay2Var, double d) {
        ay2Var.valueCase_ = 7;
        ay2Var.value_ = Double.valueOf(d);
    }

    public static void p(ay2 ay2Var, f00 f00Var) {
        ay2Var.getClass();
        ay2Var.valueCase_ = 8;
        ay2Var.value_ = f00Var;
    }

    public static void q(ay2 ay2Var, boolean z) {
        ay2Var.valueCase_ = 1;
        ay2Var.value_ = Boolean.valueOf(z);
    }

    public static void r(ay2 ay2Var, float f) {
        ay2Var.valueCase_ = 2;
        ay2Var.value_ = Float.valueOf(f);
    }

    public static void s(ay2 ay2Var, int i) {
        ay2Var.valueCase_ = 3;
        ay2Var.value_ = Integer.valueOf(i);
    }

    public static ay2 v() {
        return DEFAULT_INSTANCE;
    }

    public final String A() {
        return this.valueCase_ == 5 ? (String) this.value_ : "";
    }

    public final yx2 B() {
        return this.valueCase_ == 6 ? (yx2) this.value_ : yx2.m();
    }

    public final int C() {
        switch (this.valueCase_) {
            case 0:
                return 9;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            default:
                return 0;
        }
    }

    @Override // defpackage.sg1
    public final Object c(int i) {
        at2 rg1Var;
        switch (di0.F(i)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new v13(DEFAULT_INSTANCE, "\u0001\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\b=\u0000", new Object[]{"value_", "valueCase_", yx2.class});
            case 3:
                return new ay2();
            case 4:
                return new zx2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                at2 at2Var = PARSER;
                if (at2Var != null) {
                    return at2Var;
                }
                synchronized (ay2.class) {
                    try {
                        rg1Var = PARSER;
                        if (rg1Var == null) {
                            rg1Var = new rg1();
                            PARSER = rg1Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return rg1Var;
            default:
                p61.b();
                return null;
        }
    }

    public final boolean t() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public final f00 u() {
        return this.valueCase_ == 8 ? (f00) this.value_ : f00.p;
    }

    public final double w() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public final float x() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public final int y() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public final long z() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }
}
