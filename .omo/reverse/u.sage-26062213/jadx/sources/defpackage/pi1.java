package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pi1 {
    public final ThreadLocal a;
    public final ConcurrentHashMap b;
    public final gw4 c;
    public final iv1 d;
    public final List e;
    public final boolean f;
    public final yb1 g;

    public pi1() {
        qi1 qi1Var = qi1.q;
        this.a = new ThreadLocal();
        this.b = new ConcurrentHashMap();
        c31 c31Var = qi1Var.a;
        new HashMap(qi1Var.b);
        this.f = qi1Var.g;
        this.g = qi1Var.h;
        qi1.a(qi1Var.c);
        qi1.a(qi1Var.d);
        qi1.a(qi1Var.i);
        this.c = qi1.o;
        this.d = qi1.p;
        this.e = qi1.r;
    }

    public final Object a(String str, Class cls) {
        q44 q44Var = new q44(cls);
        Object obj = null;
        if (str == null) {
            return null;
        }
        ww1 ww1Var = new ww1(new StringReader(str));
        ww1Var.B = 2;
        boolean z = true;
        ww1Var.B = 1;
        try {
            try {
                try {
                    try {
                        ww1Var.s0();
                        z = false;
                        g34 g34VarB = b(q44Var);
                        Class cls2 = q44Var.a;
                        Object objB = g34VarB.b(ww1Var);
                        Class clsJ0 = kt4.j0(cls2);
                        if (objB != null && !clsJ0.isInstance(objB)) {
                            throw new ClassCastException("Type adapter '" + g34VarB + "' returned wrong type; requested " + cls2 + " but got instance of " + objB.getClass() + "\nVerify that the adapter was registered for the correct type.");
                        }
                        ww1Var.B = 2;
                        obj = objB;
                    } catch (IllegalStateException e) {
                        throw new fw1(e, 5);
                    }
                } catch (AssertionError e2) {
                    throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
                }
            } catch (EOFException e3) {
                if (!z) {
                    throw new fw1(e3, 5);
                }
                ww1Var.B = 2;
            } catch (IOException e4) {
                throw new fw1(e4, 5);
            }
            if (obj != null) {
                try {
                    if (ww1Var.s0() != 10) {
                        throw new fw1("JSON document was not fully consumed.", 5);
                    }
                } catch (r92 e5) {
                    throw new fw1(e5, 5);
                } catch (IOException e6) {
                    throw new fw1(e6, 5);
                }
            }
            return obj;
        } catch (Throwable th) {
            ww1Var.B = 2;
            throw th;
        }
    }

    public final g34 b(q44 q44Var) {
        boolean z;
        ConcurrentHashMap concurrentHashMap = this.b;
        g34 g34Var = (g34) concurrentHashMap.get(q44Var);
        if (g34Var != null) {
            return g34Var;
        }
        ThreadLocal threadLocal = this.a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            g34 g34Var2 = (g34) map.get(q44Var);
            if (g34Var2 != null) {
                return g34Var2;
            }
            z = false;
        }
        try {
            oi1 oi1Var = new oi1();
            map.put(q44Var, oi1Var);
            Iterator it = this.e.iterator();
            g34 g34VarA = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                g34VarA = ((h34) it.next()).a(this, q44Var);
                if (g34VarA != null) {
                    if (oi1Var.a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    oi1Var.a = g34VarA;
                    map.put(q44Var, g34VarA);
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (g34VarA == null) {
                p61.i(q44Var, "GSON (2.14.0) cannot handle ");
                return null;
            }
            if (z) {
                concurrentHashMap.putAll(map);
            }
            return g34VarA;
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final String c(Object obj) {
        boolean z = this.f;
        yb1 yb1Var = this.g;
        if (obj == null) {
            StringBuilder sb = new StringBuilder();
            try {
                bx1 bx1Var = new bx1(new s72(sb));
                bx1Var.R(yb1Var);
                bx1Var.v = z;
                bx1Var.V(2);
                bx1Var.x = false;
                d(bx1Var);
                return sb.toString();
            } catch (IOException e) {
                throw new fw1(e, 5);
            }
        }
        Class<?> cls = obj.getClass();
        StringBuilder sb2 = new StringBuilder();
        try {
            bx1 bx1Var2 = new bx1(new s72(sb2));
            bx1Var2.R(yb1Var);
            bx1Var2.v = z;
            bx1Var2.V(2);
            bx1Var2.x = false;
            e(obj, cls, bx1Var2);
            return sb2.toString();
        } catch (IOException e2) {
            throw new fw1(e2, 5);
        }
    }

    public final void d(bx1 bx1Var) {
        lw1 lw1Var = lw1.n;
        int i = bx1Var.f36u;
        boolean z = bx1Var.v;
        boolean z2 = bx1Var.x;
        bx1Var.v = this.f;
        bx1Var.x = false;
        if (i == 2) {
            bx1Var.f36u = 1;
        }
        try {
            try {
                dw1.a.getClass();
                dw1.e(bx1Var, lw1Var);
                bx1Var.V(i);
                bx1Var.v = z;
                bx1Var.x = z2;
            } catch (IOException e) {
                throw new fw1(e, 5);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            bx1Var.V(i);
            bx1Var.v = z;
            bx1Var.x = z2;
            throw th;
        }
    }

    public final void e(Object obj, Class cls, bx1 bx1Var) {
        g34 g34VarB = b(new q44(cls));
        int i = bx1Var.f36u;
        if (i == 2) {
            bx1Var.f36u = 1;
        }
        boolean z = bx1Var.v;
        boolean z2 = bx1Var.x;
        bx1Var.v = this.f;
        bx1Var.x = false;
        try {
            try {
                g34VarB.c(bx1Var, obj);
            } catch (IOException e) {
                throw new fw1(e, 5);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } finally {
            bx1Var.V(i);
            bx1Var.v = z;
            bx1Var.x = z2;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.e + ",instanceCreators:" + this.c + "}";
    }
}
