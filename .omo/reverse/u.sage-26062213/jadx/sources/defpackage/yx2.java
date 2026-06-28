package defpackage;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yx2 extends sg1 {
    private static final yx2 DEFAULT_INSTANCE;
    private static volatile at2 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private ct1 strings_ = a03.q;

    static {
        yx2 yx2Var = new yx2();
        DEFAULT_INSTANCE = yx2Var;
        sg1.j(yx2.class, yx2Var);
    }

    public static void l(yx2 yx2Var, Iterable iterable) {
        ct1 ct1Var = yx2Var.strings_;
        if (!((a03) ct1Var).n) {
            a03 a03Var = (a03) ct1Var;
            int i = a03Var.p;
            yx2Var.strings_ = a03Var.d(i == 0 ? 10 : i * 2);
        }
        RandomAccess randomAccess = yx2Var.strings_;
        Charset charset = dt1.a;
        if (iterable instanceof u12) {
            List listK = ((u12) iterable).K();
            if (randomAccess != null) {
                mk0.b();
                return;
            }
            ((a03) randomAccess).getClass();
            Iterator it = listK.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                if (next instanceof f00) {
                    throw null;
                }
                if (!(next instanceof byte[])) {
                    throw null;
                }
                byte[] bArr = (byte[]) next;
                f00.d(bArr, 0, bArr.length);
                throw null;
            }
            return;
        }
        if (iterable instanceof oy2) {
            ((a03) randomAccess).addAll((Collection) iterable);
            return;
        }
        if ((randomAccess instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) randomAccess).ensureCapacity(((Collection) iterable).size() + ((a03) randomAccess).p);
        }
        a03 a03Var2 = (a03) randomAccess;
        int i2 = a03Var2.p;
        for (Object obj : iterable) {
            if (obj == null) {
                String str = "Element at index " + (a03Var2.p - i2) + " is null.";
                for (int i3 = a03Var2.p - 1; i3 >= i2; i3--) {
                    a03Var2.remove(i3);
                }
                q73.r(str);
                return;
            }
            a03Var2.add(obj);
        }
    }

    public static yx2 m() {
        return DEFAULT_INSTANCE;
    }

    public static xx2 o() {
        return (xx2) ((qg1) DEFAULT_INSTANCE.c(5));
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
                return new v13(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 3:
                return new yx2();
            case 4:
                return new xx2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                at2 at2Var = PARSER;
                if (at2Var != null) {
                    return at2Var;
                }
                synchronized (yx2.class) {
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

    public final ct1 n() {
        return this.strings_;
    }
}
