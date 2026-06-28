package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x32 extends AbstractMap implements Serializable {
    public static final lh0 v = new lh0(11);
    public final boolean o;
    public w32 p;
    public final w32 s;
    public v32 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public v32 f403u;
    public int q = 0;
    public int r = 0;
    public final Comparator n = v;

    public x32(boolean z) {
        this.o = z;
        this.s = new w32(z);
    }

    public final w32 a(Object obj, boolean z) {
        int iCompareTo;
        w32 w32Var;
        w32 w32Var2 = this.p;
        lh0 lh0Var = v;
        Comparator comparator = this.n;
        if (w32Var2 != null) {
            Comparable comparable = comparator == lh0Var ? (Comparable) obj : null;
            while (true) {
                Object obj2 = w32Var2.s;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return w32Var2;
                }
                w32 w32Var3 = iCompareTo < 0 ? w32Var2.o : w32Var2.p;
                if (w32Var3 == null) {
                    break;
                }
                w32Var2 = w32Var3;
            }
        } else {
            iCompareTo = 0;
        }
        w32 w32Var4 = w32Var2;
        if (!z) {
            return null;
        }
        w32 w32Var5 = this.s;
        if (w32Var4 != null) {
            w32Var = new w32(this.o, w32Var4, obj, w32Var5, w32Var5.r);
            if (iCompareTo < 0) {
                w32Var4.o = w32Var;
            } else {
                w32Var4.p = w32Var;
            }
            b(w32Var4, true);
        } else {
            if (comparator == lh0Var && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            w32Var = new w32(this.o, w32Var4, obj, w32Var5, w32Var5.r);
            this.p = w32Var;
        }
        this.q++;
        this.r++;
        return w32Var;
    }

    public final void b(w32 w32Var, boolean z) {
        while (w32Var != null) {
            w32 w32Var2 = w32Var.o;
            w32 w32Var3 = w32Var.p;
            int i = w32Var2 != null ? w32Var2.v : 0;
            int i2 = w32Var3 != null ? w32Var3.v : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                w32 w32Var4 = w32Var3.o;
                w32 w32Var5 = w32Var3.p;
                int i4 = (w32Var4 != null ? w32Var4.v : 0) - (w32Var5 != null ? w32Var5.v : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    f(w32Var);
                } else {
                    g(w32Var3);
                    f(w32Var);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                w32 w32Var6 = w32Var2.o;
                w32 w32Var7 = w32Var2.p;
                int i5 = (w32Var6 != null ? w32Var6.v : 0) - (w32Var7 != null ? w32Var7.v : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    g(w32Var);
                } else {
                    f(w32Var2);
                    g(w32Var);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                w32Var.v = i + 1;
                if (z) {
                    return;
                }
            } else {
                w32Var.v = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            w32Var = w32Var.n;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.p = null;
        this.q = 0;
        this.r++;
        w32 w32Var = this.s;
        w32Var.r = w32Var;
        w32Var.q = w32Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        w32 w32VarA = null;
        if (obj != null) {
            try {
                w32VarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return w32VarA != null;
    }

    public final void d(w32 w32Var, boolean z) {
        w32 w32Var2;
        w32 w32Var3;
        int i;
        if (z) {
            w32 w32Var4 = w32Var.r;
            w32Var4.q = w32Var.q;
            w32Var.q.r = w32Var4;
        }
        w32 w32Var5 = w32Var.o;
        w32 w32Var6 = w32Var.p;
        w32 w32Var7 = w32Var.n;
        int i2 = 0;
        if (w32Var5 == null || w32Var6 == null) {
            if (w32Var5 != null) {
                e(w32Var, w32Var5);
                w32Var.o = null;
            } else if (w32Var6 != null) {
                e(w32Var, w32Var6);
                w32Var.p = null;
            } else {
                e(w32Var, null);
            }
            b(w32Var7, false);
            this.q--;
            this.r++;
            return;
        }
        if (w32Var5.v > w32Var6.v) {
            w32 w32Var8 = w32Var5.p;
            while (true) {
                w32 w32Var9 = w32Var8;
                w32Var3 = w32Var5;
                w32Var5 = w32Var9;
                if (w32Var5 == null) {
                    break;
                } else {
                    w32Var8 = w32Var5.p;
                }
            }
        } else {
            w32 w32Var10 = w32Var6.o;
            while (true) {
                w32Var2 = w32Var6;
                w32Var6 = w32Var10;
                if (w32Var6 == null) {
                    break;
                } else {
                    w32Var10 = w32Var6.o;
                }
            }
            w32Var3 = w32Var2;
        }
        d(w32Var3, false);
        w32 w32Var11 = w32Var.o;
        if (w32Var11 != null) {
            i = w32Var11.v;
            w32Var3.o = w32Var11;
            w32Var11.n = w32Var3;
            w32Var.o = null;
        } else {
            i = 0;
        }
        w32 w32Var12 = w32Var.p;
        if (w32Var12 != null) {
            i2 = w32Var12.v;
            w32Var3.p = w32Var12;
            w32Var12.n = w32Var3;
            w32Var.p = null;
        }
        w32Var3.v = Math.max(i, i2) + 1;
        e(w32Var, w32Var3);
    }

    public final void e(w32 w32Var, w32 w32Var2) {
        w32 w32Var3 = w32Var.n;
        w32Var.n = null;
        if (w32Var2 != null) {
            w32Var2.n = w32Var3;
        }
        if (w32Var3 == null) {
            this.p = w32Var2;
        } else if (w32Var3.o == w32Var) {
            w32Var3.o = w32Var2;
        } else {
            w32Var3.p = w32Var2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        v32 v32Var = this.t;
        if (v32Var != null) {
            return v32Var;
        }
        v32 v32Var2 = new v32(this, 0);
        this.t = v32Var2;
        return v32Var2;
    }

    public final void f(w32 w32Var) {
        w32 w32Var2 = w32Var.o;
        w32 w32Var3 = w32Var.p;
        w32 w32Var4 = w32Var3.o;
        w32 w32Var5 = w32Var3.p;
        w32Var.p = w32Var4;
        if (w32Var4 != null) {
            w32Var4.n = w32Var;
        }
        e(w32Var, w32Var3);
        w32Var3.o = w32Var;
        w32Var.n = w32Var3;
        int iMax = Math.max(w32Var2 != null ? w32Var2.v : 0, w32Var4 != null ? w32Var4.v : 0) + 1;
        w32Var.v = iMax;
        w32Var3.v = Math.max(iMax, w32Var5 != null ? w32Var5.v : 0) + 1;
    }

    public final void g(w32 w32Var) {
        w32 w32Var2 = w32Var.o;
        w32 w32Var3 = w32Var.p;
        w32 w32Var4 = w32Var2.o;
        w32 w32Var5 = w32Var2.p;
        w32Var.o = w32Var5;
        if (w32Var5 != null) {
            w32Var5.n = w32Var;
        }
        e(w32Var, w32Var2);
        w32Var2.p = w32Var;
        w32Var.n = w32Var2;
        int iMax = Math.max(w32Var3 != null ? w32Var3.v : 0, w32Var5 != null ? w32Var5.v : 0) + 1;
        w32Var.v = iMax;
        w32Var2.v = Math.max(iMax, w32Var4 != null ? w32Var4.v : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        w32 w32VarA;
        if (obj != null) {
            try {
                w32VarA = a(obj, false);
            } catch (ClassCastException unused) {
                w32VarA = null;
            }
        } else {
            w32VarA = null;
        }
        if (w32VarA != null) {
            return w32VarA.f390u;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        v32 v32Var = this.f403u;
        if (v32Var != null) {
            return v32Var;
        }
        v32 v32Var2 = new v32(this, 1);
        this.f403u = v32Var2;
        return v32Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            q73.r("key == null");
            return null;
        }
        if (obj2 == null && !this.o) {
            q73.r("value == null");
            return null;
        }
        w32 w32VarA = a(obj, true);
        Object obj3 = w32VarA.f390u;
        w32VarA.f390u = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        w32 w32VarA;
        if (obj != null) {
            try {
                w32VarA = a(obj, false);
            } catch (ClassCastException unused) {
                w32VarA = null;
            }
        } else {
            w32VarA = null;
        }
        if (w32VarA != null) {
            d(w32VarA, true);
        }
        if (w32VarA != null) {
            return w32VarA.f390u;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.q;
    }
}
