package defpackage;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wx2 extends sg1 {
    private static final wx2 DEFAULT_INSTANCE;
    private static volatile at2 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private ha2 preferences_ = ha2.o;

    static {
        wx2 wx2Var = new wx2();
        DEFAULT_INSTANCE = wx2Var;
        sg1.j(wx2.class, wx2Var);
    }

    public static ha2 l(wx2 wx2Var) {
        ha2 ha2Var = wx2Var.preferences_;
        if (!ha2Var.n) {
            wx2Var.preferences_ = ha2Var.b();
        }
        return wx2Var.preferences_;
    }

    public static ux2 n() {
        return (ux2) ((qg1) DEFAULT_INSTANCE.c(5));
    }

    public static wx2 o(FileInputStream fileInputStream) {
        wx2 wx2Var = DEFAULT_INSTANCE;
        a70 a70Var = new a70(fileInputStream);
        b41 b41VarA = b41.a();
        sg1 sg1VarI = wx2Var.i();
        try {
            zz2 zz2Var = zz2.c;
            zz2Var.getClass();
            be3 be3VarA = zz2Var.a(sg1VarI.getClass());
            e50 e50Var = (e50) a70Var.o;
            if (e50Var == null) {
                e50Var = new e50(a70Var);
            }
            be3VarA.c(sg1VarI, e50Var, b41VarA);
            be3VarA.d(sg1VarI);
            if (sg1.f(sg1VarI, true)) {
                return (wx2) sg1VarI;
            }
            throw new wt1(new r64().getMessage());
        } catch (IOException e) {
            if (e.getCause() instanceof wt1) {
                throw ((wt1) e.getCause());
            }
            throw new wt1(e.getMessage(), e);
        } catch (r64 e2) {
            throw new wt1(e2.getMessage());
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof wt1) {
                throw ((wt1) e3.getCause());
            }
            throw e3;
        } catch (wt1 e4) {
            if (e4.n) {
                throw new wt1(e4.getMessage(), e4);
            }
            throw e4;
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
                return new v13(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", vx2.a});
            case 3:
                return new wx2();
            case 4:
                return new ux2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                at2 at2Var = PARSER;
                if (at2Var != null) {
                    return at2Var;
                }
                synchronized (wx2.class) {
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

    public final Map m() {
        return Collections.unmodifiableMap(this.preferences_);
    }
}
