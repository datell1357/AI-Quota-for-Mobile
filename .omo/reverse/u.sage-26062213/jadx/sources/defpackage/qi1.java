package defpackage;

import defpackage.mu1;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qi1 {
    public static final gw4 o;
    public static final iv1 p;
    public static final qi1 q;
    public static final List r;
    public static final yb1 n = yb1.d;
    public static final int s = 1;
    public static final int t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f279u = 2;
    public final c31 a = c31.p;
    public final int j = 1;
    public final int k = s;
    public final HashMap b = new HashMap();
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final int e = 2;
    public final int f = 2;
    public final boolean g = true;
    public final yb1 h = n;
    public final int l = t;
    public final int m = f279u;
    public final ArrayDeque i = new ArrayDeque();

    static {
        c44 c44Var;
        c44 c44Var2;
        int i = 1;
        gw4 gw4Var = new gw4(12, Collections.EMPTY_MAP, Collections.EMPTY_LIST);
        o = gw4Var;
        iv1 iv1Var = new iv1(gw4Var);
        p = iv1Var;
        qi1 qi1Var = new qi1();
        q = qi1Var;
        ArrayList arrayList = new ArrayList();
        arrayList.add(m44.B);
        int i2 = qi1Var.l;
        arrayList.add(i2 == 1 ? xn2.c : new wn2(i2));
        arrayList.add(qi1Var.a);
        ArrayList arrayList2 = qi1Var.c;
        if (!arrayList2.isEmpty()) {
            ArrayList arrayList3 = new ArrayList(arrayList2);
            Collections.reverse(arrayList3);
            arrayList.addAll(arrayList3);
        }
        ArrayList arrayList4 = qi1Var.d;
        if (!arrayList4.isEmpty()) {
            ArrayList arrayList5 = new ArrayList(arrayList4);
            Collections.reverse(arrayList5);
            arrayList.addAll(arrayList5);
        }
        boolean z = er3.a;
        int i3 = 0;
        mu1.b bVar = null;
        int i4 = qi1Var.e;
        int i5 = qi1Var.f;
        if (i4 != 2 || i5 != 2) {
            c44 c44Var3 = new c44(Date.class, new mo0(lo0.b, i4, i5), i3);
            if (z) {
                dr3 dr3Var = er3.c;
                dr3Var.getClass();
                c44Var2 = new c44(dr3Var.a, new mo0(dr3Var, i4, i5), i3);
                dr3 dr3Var2 = er3.b;
                dr3Var2.getClass();
                c44Var = new c44(dr3Var2.a, new mo0(dr3Var2, i4, i5), i3);
            } else {
                c44Var = null;
                c44Var2 = null;
            }
            arrayList.add(c44Var3);
            if (z) {
                arrayList.add(c44Var2);
                arrayList.add(c44Var);
            }
        }
        arrayList.add(m44.r);
        arrayList.add(m44.g);
        arrayList.add(m44.d);
        arrayList.add(m44.e);
        arrayList.add(m44.f);
        if (qi1Var.j == 0) {
            throw null;
        }
        l34 l34Var = m44.k;
        arrayList.add(new d44(Long.TYPE, Long.class, l34Var));
        arrayList.add(new d44(Double.TYPE, Double.class, m44.m));
        arrayList.add(new d44(Float.TYPE, Float.class, m44.l));
        int i6 = qi1Var.m;
        arrayList.add(i6 == 2 ? mn2.b : new ln2(new mn2(i6), i3));
        arrayList.add(m44.h);
        arrayList.add(m44.i);
        Objects.requireNonNull(l34Var);
        arrayList.add(new c44(AtomicLong.class, new k34(l34Var, 1).a(), i3));
        arrayList.add(new c44(AtomicLongArray.class, new k34(l34Var, 0).a(), i3));
        arrayList.add(m44.j);
        arrayList.add(m44.n);
        arrayList.add(m44.s);
        arrayList.add(m44.t);
        arrayList.add(m44.o);
        arrayList.add(m44.p);
        arrayList.add(m44.q);
        arrayList.add(m44.f202u);
        arrayList.add(m44.v);
        arrayList.add(m44.x);
        arrayList.add(m44.y);
        arrayList.add(m44.A);
        arrayList.add(m44.w);
        arrayList.add(m44.b);
        arrayList.add(mo0.c);
        arrayList.add(m44.z);
        try {
            lu1 lu1Var = mu1.a;
            ((mu1) ((l44) mu1.class.getDeclaredConstructor(null).newInstance(null))).getClass();
            bVar = mu1.j;
        } catch (LinkageError | ReflectiveOperationException unused) {
        }
        if (bVar != null) {
            arrayList.add(bVar);
        }
        arrayList.addAll(er3.d);
        arrayList.add(hi.c);
        arrayList.add(m44.a);
        arrayList.add(new n70(gw4Var, i3));
        arrayList.add(new n70(gw4Var, i));
        arrayList.add(iv1Var);
        arrayList.add(m44.C);
        arrayList.add(new j43(gw4Var, qi1Var.k, qi1Var.a, iv1Var, a(qi1Var.i)));
        arrayList.trimToSize();
        r = Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List a(AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (abstractCollection.size() == 1) {
            return Collections.singletonList(abstractCollection instanceof List ? ((List) abstractCollection).get(0) : abstractCollection.iterator().next());
        }
        return Collections.unmodifiableList(Arrays.asList(abstractCollection.toArray()));
    }
}
