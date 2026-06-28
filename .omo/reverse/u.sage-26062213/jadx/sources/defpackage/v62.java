package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v62 extends AbstractMap implements ConcurrentMap {
    public static final w52 F;
    public static final x52 G;
    public final int A;
    public final x00 B;
    public d62 C;
    public p62 D;
    public d62 E;
    public final int n;
    public final int o;
    public final i62[] p;
    public final a21 r;
    public final a21 s;
    public final long v;
    public final int w;
    public final long x;
    public final x52 y;
    public final dz3 z;
    public final int q = Math.min(4, 65536);
    public final int t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f369u = 1;

    static {
        Logger.getLogger(v62.class.getName());
        F = new w52();
        G = new x52();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v62(o00 o00Var, x00 x00Var) {
        a21 a21Var = a21.x;
        this.r = a21Var;
        this.s = a21Var;
        long j = o00Var.b;
        long j2 = j != 0 ? -1L : 0L;
        this.v = j2;
        this.w = 1;
        this.x = j == -1 ? 0L : j;
        this.y = G;
        this.z = !b() ? o00.d : dz3.a;
        int i = 0;
        this.A = di0.n[(a() ? 1 : 0) | ((b() || b()) != false ? 2 : 0)];
        fu3 fu3Var = o00.c;
        this.B = x00Var;
        int iMin = Math.min(16, 1073741824);
        iMin = a() ? (int) Math.min(iMin, j2) : iMin;
        int i2 = 1;
        int i3 = 0;
        while (i2 < this.q && (!a() || ((long) i2) * 20 <= this.v)) {
            i3++;
            i2 <<= 1;
        }
        this.o = 32 - i3;
        this.n = i2 - 1;
        this.p = new i62[i2];
        int i4 = iMin / i2;
        int i5 = 1;
        while (i5 < (i4 * i2 < iMin ? i4 + 1 : i4)) {
            i5 <<= 1;
        }
        if (a()) {
            long j3 = this.v;
            long j4 = i2;
            long j5 = (j3 / j4) + 1;
            long j6 = j3 % j4;
            while (true) {
                i62[] i62VarArr = this.p;
                if (i >= i62VarArr.length) {
                    return;
                }
                if (i == j6) {
                    j5--;
                }
                i62VarArr[i] = new i62(this, i5, j5, (m00) fu3Var.n);
                i++;
            }
        } else {
            while (true) {
                i62[] i62VarArr2 = this.p;
                if (i >= i62VarArr2.length) {
                    return;
                }
                i62VarArr2[i] = new i62(this, i5, -1L, (m00) fu3Var.n);
                i++;
            }
        }
    }

    public final boolean a() {
        return this.v >= 0;
    }

    public final boolean b() {
        return this.x > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (i62 i62Var : this.p) {
            if (i62Var.o != 0) {
                i62Var.lock();
                try {
                    i62Var.t(i62Var.n.z.a());
                    AtomicReferenceArray atomicReferenceArray = i62Var.s;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (x33 x33VarM = (x33) atomicReferenceArray.get(i); x33VarM != null; x33VarM = x33VarM.m()) {
                            if (x33VarM.d().b()) {
                                Object key = x33VarM.getKey();
                                Object obj = x33VarM.d().get();
                                int i2 = (key == null || obj == null) ? 3 : 1;
                                x33VarM.n();
                                i62Var.d(x33VarM.d().g(), i2, key, obj);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                        atomicReferenceArray.set(i3, null);
                    }
                    v62 v62Var = i62Var.n;
                    if (v62Var.t != 1) {
                        while (i62Var.f132u.poll() != null) {
                        }
                    }
                    if (v62Var.f369u != 1) {
                        while (i62Var.v.poll() != null) {
                        }
                    }
                    i62Var.y.clear();
                    i62Var.z.clear();
                    i62Var.x.set(0);
                    i62Var.q++;
                    i62Var.o = 0;
                    i62Var.unlock();
                    i62Var.u();
                } catch (Throwable th) {
                    i62Var.unlock();
                    i62Var.u();
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0040 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[Catch: all -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:6:0x000f, B:8:0x0013, B:24:0x0044, B:11:0x0023, B:13:0x002b, B:16:0x0034, B:19:0x003a, B:20:0x003d, B:15:0x0031), top: B:35:0x000f, inners: #1 }] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsKey(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            int r1 = r5.d(r6)
            i62 r5 = r5.f(r1)
            r5.getClass()
            int r2 = r5.o     // Catch: java.lang.Throwable -> L53
            if (r2 == 0) goto L55
            v62 r2 = r5.n     // Catch: java.lang.Throwable -> L53
            dz3 r2 = r2.z     // Catch: java.lang.Throwable -> L53
            long r2 = r2.a()     // Catch: java.lang.Throwable -> L53
            x33 r6 = r5.i(r1, r6)     // Catch: java.lang.Throwable -> L53
            r1 = 0
            if (r6 != 0) goto L23
            goto L37
        L23:
            v62 r4 = r5.n     // Catch: java.lang.Throwable -> L53
            boolean r4 = r4.e(r6, r2)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L3e
            boolean r6 = r5.tryLock()     // Catch: java.lang.Throwable -> L53
            if (r6 == 0) goto L37
            r5.g(r2)     // Catch: java.lang.Throwable -> L39
            r5.unlock()     // Catch: java.lang.Throwable -> L53
        L37:
            r6 = r1
            goto L3e
        L39:
            r6 = move-exception
            r5.unlock()     // Catch: java.lang.Throwable -> L53
            throw r6     // Catch: java.lang.Throwable -> L53
        L3e:
            if (r6 != 0) goto L44
            r5.l()
            return r0
        L44:
            o62 r6 = r6.d()     // Catch: java.lang.Throwable -> L53
            java.lang.Object r6 = r6.get()     // Catch: java.lang.Throwable -> L53
            if (r6 == 0) goto L4f
            r0 = 1
        L4f:
            r5.l()
            return r0
        L53:
            r6 = move-exception
            goto L59
        L55:
            r5.l()
            return r0
        L59:
            r5.l()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v62.containsKey(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        if (obj != null) {
            long jA = this.z.a();
            i62[] i62VarArr = this.p;
            long j = -1;
            int i = 0;
            while (i < 3) {
                int length = i62VarArr.length;
                long j2 = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    i62 i62Var = i62VarArr[i2];
                    int i3 = i62Var.o;
                    AtomicReferenceArray atomicReferenceArray = i62Var.s;
                    for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                        x33 x33VarM = (x33) atomicReferenceArray.get(i4);
                        while (x33VarM != null) {
                            i62[] i62VarArr2 = i62VarArr;
                            Object objJ = i62Var.j(x33VarM, jA);
                            x33 x33Var = x33VarM;
                            if (objJ != null && this.s.n(obj, objJ)) {
                                return true;
                            }
                            x33VarM = x33Var.m();
                            i62VarArr = i62VarArr2;
                        }
                    }
                    j2 += (long) i62Var.q;
                }
                i62[] i62VarArr3 = i62VarArr;
                if (j2 == j) {
                    return false;
                }
                i++;
                j = j2;
                i62VarArr = i62VarArr3;
            }
        }
        return false;
    }

    public final int d(Object obj) {
        int iHashCode;
        a21 a21Var = this.r;
        if (obj == null) {
            a21Var.getClass();
            iHashCode = 0;
        } else {
            a21Var.getClass();
            iHashCode = obj.hashCode();
        }
        int i = iHashCode + ((iHashCode << 15) ^ (-12931));
        int i2 = i ^ (i >>> 10);
        int i3 = i2 + (i2 << 3);
        int i4 = i3 ^ (i3 >>> 6);
        int i5 = (i4 << 2) + (i4 << 14) + i4;
        return (i5 >>> 16) ^ i5;
    }

    public final boolean e(x33 x33Var, long j) {
        x33Var.getClass();
        return b() && j - x33Var.f() >= this.x;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        d62 d62Var = this.E;
        if (d62Var != null) {
            return d62Var;
        }
        d62 d62Var2 = new d62(this, 0);
        this.E = d62Var2;
        return d62Var2;
    }

    public final i62 f(int i) {
        return this.p[(i >>> this.o) & this.n];
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0043 A[Catch: all -> 0x005e, TRY_ENTER, TryCatch #1 {all -> 0x005e, blocks: (B:6:0x000f, B:8:0x0013, B:24:0x0043, B:26:0x004d, B:31:0x0060, B:11:0x0022, B:13:0x002a, B:16:0x0033, B:19:0x0039, B:20:0x003c, B:15:0x0030), top: B:38:0x000f, inners: #0 }] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            int r1 = r4.d(r5)
            i62 r4 = r4.f(r1)
            r4.getClass()
            int r2 = r4.o     // Catch: java.lang.Throwable -> L5e
            if (r2 == 0) goto L63
            v62 r2 = r4.n     // Catch: java.lang.Throwable -> L5e
            dz3 r2 = r2.z     // Catch: java.lang.Throwable -> L5e
            long r2 = r2.a()     // Catch: java.lang.Throwable -> L5e
            x33 r5 = r4.i(r1, r5)     // Catch: java.lang.Throwable -> L5e
            if (r5 != 0) goto L22
            goto L36
        L22:
            v62 r1 = r4.n     // Catch: java.lang.Throwable -> L5e
            boolean r1 = r1.e(r5, r2)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L3d
            boolean r5 = r4.tryLock()     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L36
            r4.g(r2)     // Catch: java.lang.Throwable -> L38
            r4.unlock()     // Catch: java.lang.Throwable -> L5e
        L36:
            r5 = r0
            goto L3d
        L38:
            r5 = move-exception
            r4.unlock()     // Catch: java.lang.Throwable -> L5e
            throw r5     // Catch: java.lang.Throwable -> L5e
        L3d:
            if (r5 != 0) goto L43
            r4.l()
            return r0
        L43:
            o62 r1 = r5.d()     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L60
            r4.o(r5, r2)     // Catch: java.lang.Throwable -> L5e
            r5.getKey()     // Catch: java.lang.Throwable -> L5e
            v62 r5 = r4.n     // Catch: java.lang.Throwable -> L5e
            x00 r0 = r5.B     // Catch: java.lang.Throwable -> L5e
            r5.getClass()     // Catch: java.lang.Throwable -> L5e
            r4.l()
            return r1
        L5e:
            r5 = move-exception
            goto L67
        L60:
            r4.x()     // Catch: java.lang.Throwable -> L5e
        L63:
            r4.l()
            return r0
        L67:
            r4.l()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v62.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        i62[] i62VarArr = this.p;
        long j = 0;
        for (i62 i62Var : i62VarArr) {
            if (i62Var.o != 0) {
                return false;
            }
            j += (long) i62Var.q;
        }
        if (j == 0) {
            return true;
        }
        for (i62 i62Var2 : i62VarArr) {
            if (i62Var2.o != 0) {
                return false;
            }
            j -= (long) i62Var2.q;
        }
        return j == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        d62 d62Var = this.C;
        if (d62Var != null) {
            return d62Var;
        }
        d62 d62Var2 = new d62(this, 1);
        this.C = d62Var2;
        return d62Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iD = d(obj);
        return f(iD).m(iD, obj, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iD = d(obj);
        return f(iD).m(iD, obj, obj2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        r7 = r4.d();
        r6 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        if (r2.n.s.n(r13, r6) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        if (r6 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
    
        if (r7.b() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        r8 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        r2.q++;
        r12 = r2.s(r3, r4, r5, r6, r7, r8);
        r13 = r2.o - 1;
        r11.set(r10, r12);
        r2.o = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0075, code lost:
    
        if (r8 != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
    
        r0 = true;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(java.lang.Object r12, java.lang.Object r13) {
        /*
            r11 = this;
            r0 = 0
            if (r12 == 0) goto L8e
            if (r13 != 0) goto L7
            goto L8e
        L7:
            int r1 = r11.d(r12)
            i62 r2 = r11.f(r1)
            r2.lock()
            v62 r11 = r2.n     // Catch: java.lang.Throwable -> L7f
            dz3 r11 = r11.z     // Catch: java.lang.Throwable -> L7f
            long r3 = r11.a()     // Catch: java.lang.Throwable -> L7f
            r2.t(r3)     // Catch: java.lang.Throwable -> L7f
            java.util.concurrent.atomic.AtomicReferenceArray r11 = r2.s     // Catch: java.lang.Throwable -> L7f
            int r3 = r11.length()     // Catch: java.lang.Throwable -> L7f
            r9 = 1
            int r3 = r3 - r9
            r10 = r1 & r3
            java.lang.Object r3 = r11.get(r10)     // Catch: java.lang.Throwable -> L7f
            x33 r3 = (defpackage.x33) r3     // Catch: java.lang.Throwable -> L7f
            r4 = r3
        L2e:
            if (r4 == 0) goto L78
            java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L7f
            int r6 = r4.n()     // Catch: java.lang.Throwable -> L7f
            if (r6 != r1) goto L82
            if (r5 == 0) goto L82
            v62 r6 = r2.n     // Catch: java.lang.Throwable -> L7f
            a21 r6 = r6.r     // Catch: java.lang.Throwable -> L7f
            boolean r6 = r6.n(r12, r5)     // Catch: java.lang.Throwable -> L7f
            if (r6 == 0) goto L82
            o62 r7 = r4.d()     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r6 = r7.get()     // Catch: java.lang.Throwable -> L7f
            v62 r12 = r2.n     // Catch: java.lang.Throwable -> L7f
            a21 r12 = r12.s     // Catch: java.lang.Throwable -> L7f
            boolean r12 = r12.n(r13, r6)     // Catch: java.lang.Throwable -> L7f
            if (r12 == 0) goto L5a
            r8 = r9
            goto L64
        L5a:
            if (r6 != 0) goto L78
            boolean r12 = r7.b()     // Catch: java.lang.Throwable -> L7f
            if (r12 == 0) goto L78
            r12 = 3
            r8 = r12
        L64:
            int r12 = r2.q     // Catch: java.lang.Throwable -> L7f
            int r12 = r12 + r9
            r2.q = r12     // Catch: java.lang.Throwable -> L7f
            x33 r12 = r2.s(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L7f
            int r13 = r2.o     // Catch: java.lang.Throwable -> L7f
            int r13 = r13 - r9
            r11.set(r10, r12)     // Catch: java.lang.Throwable -> L7f
            r2.o = r13     // Catch: java.lang.Throwable -> L7f
            if (r8 != r9) goto L78
            r0 = r9
        L78:
            r2.unlock()
            r2.u()
            return r0
        L7f:
            r0 = move-exception
            r11 = r0
            goto L87
        L82:
            x33 r4 = r4.m()     // Catch: java.lang.Throwable -> L7f
            goto L2e
        L87:
            r2.unlock()
            r2.u()
            throw r11
        L8e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v62.remove(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj3.getClass();
        if (obj2 == null) {
            return false;
        }
        int iD = d(obj);
        i62 i62VarF = f(iD);
        i62VarF.lock();
        try {
            long jA = i62VarF.n.z.a();
            i62VarF.t(jA);
            AtomicReferenceArray atomicReferenceArray = i62VarF.s;
            int length = iD & (atomicReferenceArray.length() - 1);
            x33 x33Var = (x33) atomicReferenceArray.get(length);
            long j = jA;
            x33 x33VarM = x33Var;
            while (true) {
                if (x33VarM == null) {
                    break;
                }
                x33 x33Var2 = x33Var;
                Object key = x33VarM.getKey();
                if (x33VarM.n() == iD && key != null && i62VarF.n.r.n(obj, key)) {
                    long j2 = j;
                    o62 o62VarD = x33VarM.d();
                    Object obj4 = o62VarD.get();
                    if (obj4 == null) {
                        if (o62VarD.b()) {
                            i62VarF.q++;
                            x33 x33VarS = i62VarF.s(x33Var2, x33VarM, key, obj4, o62VarD, 3);
                            int i = i62VarF.o - 1;
                            atomicReferenceArray.set(length, x33VarS);
                            i62VarF.o = i;
                        }
                    } else {
                        if (i62VarF.n.s.n(obj2, obj4)) {
                            i62VarF.q++;
                            i62VarF.d(o62VarD.g(), 2, obj, obj4);
                            i62VarF.v(x33VarM, obj3, j2);
                            i62VarF.e(x33VarM);
                            return true;
                        }
                        i62VarF.n(x33VarM, j2);
                    }
                } else {
                    x33Var = x33Var2;
                    long j3 = j;
                    x33VarM = x33VarM.m();
                    j = j3;
                }
            }
            return false;
        } finally {
            i62VarF.unlock();
            i62VarF.u();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long jMax = 0;
        for (i62 i62Var : this.p) {
            jMax += (long) Math.max(0, i62Var.o);
        }
        return qn0.G(jMax);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        p62 p62Var = this.D;
        if (p62Var != null) {
            return p62Var;
        }
        p62 p62Var2 = new p62(this);
        this.D = p62Var2;
        return p62Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        r7 = r4.d();
        r6 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (r6 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
    
        if (r7.b() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
    
        r8 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
    
        r2.q++;
        r12 = r2.s(r3, r4, r5, r6, r7, r8);
        r0 = r2.o - 1;
        r11.set(r10, r12);
        r2.o = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        r2.unlock();
        r2.u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        return r6;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r12) {
        /*
            r11 = this;
            r0 = 0
            if (r12 != 0) goto L4
            return r0
        L4:
            int r1 = r11.d(r12)
            i62 r2 = r11.f(r1)
            r2.lock()
            v62 r11 = r2.n     // Catch: java.lang.Throwable -> L6f
            dz3 r11 = r11.z     // Catch: java.lang.Throwable -> L6f
            long r3 = r11.a()     // Catch: java.lang.Throwable -> L6f
            r2.t(r3)     // Catch: java.lang.Throwable -> L6f
            java.util.concurrent.atomic.AtomicReferenceArray r11 = r2.s     // Catch: java.lang.Throwable -> L6f
            int r3 = r11.length()     // Catch: java.lang.Throwable -> L6f
            r9 = 1
            int r3 = r3 - r9
            r10 = r1 & r3
            java.lang.Object r3 = r11.get(r10)     // Catch: java.lang.Throwable -> L6f
            x33 r3 = (defpackage.x33) r3     // Catch: java.lang.Throwable -> L6f
            r4 = r3
        L2b:
            if (r4 == 0) goto L72
            java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L6f
            int r6 = r4.n()     // Catch: java.lang.Throwable -> L6f
            if (r6 != r1) goto L79
            if (r5 == 0) goto L79
            v62 r6 = r2.n     // Catch: java.lang.Throwable -> L6f
            a21 r6 = r6.r     // Catch: java.lang.Throwable -> L6f
            boolean r6 = r6.n(r12, r5)     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L79
            o62 r7 = r4.d()     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r6 = r7.get()     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L4f
            r8 = r9
            goto L57
        L4f:
            boolean r12 = r7.b()     // Catch: java.lang.Throwable -> L6f
            if (r12 == 0) goto L72
            r12 = 3
            r8 = r12
        L57:
            int r12 = r2.q     // Catch: java.lang.Throwable -> L6f
            int r12 = r12 + r9
            r2.q = r12     // Catch: java.lang.Throwable -> L6f
            x33 r12 = r2.s(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L6f
            int r0 = r2.o     // Catch: java.lang.Throwable -> L6f
            int r0 = r0 - r9
            r11.set(r10, r12)     // Catch: java.lang.Throwable -> L6f
            r2.o = r0     // Catch: java.lang.Throwable -> L6f
            r2.unlock()
            r2.u()
            return r6
        L6f:
            r0 = move-exception
            r11 = r0
            goto L7e
        L72:
            r2.unlock()
            r2.u()
            return r0
        L79:
            x33 r4 = r4.m()     // Catch: java.lang.Throwable -> L6f
            goto L2b
        L7e:
            r2.unlock()
            r2.u()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v62.remove(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0077, code lost:
    
        return null;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object replace(java.lang.Object r13, java.lang.Object r14) {
        /*
            r12 = this;
            r13.getClass()
            r14.getClass()
            int r0 = r12.d(r13)
            i62 r1 = r12.f(r0)
            r1.lock()
            v62 r12 = r1.n     // Catch: java.lang.Throwable -> L6e
            dz3 r12 = r12.z     // Catch: java.lang.Throwable -> L6e
            long r2 = r12.a()     // Catch: java.lang.Throwable -> L6e
            r1.t(r2)     // Catch: java.lang.Throwable -> L6e
            java.util.concurrent.atomic.AtomicReferenceArray r12 = r1.s     // Catch: java.lang.Throwable -> L6e
            int r4 = r12.length()     // Catch: java.lang.Throwable -> L6e
            int r4 = r4 + (-1)
            r8 = r0 & r4
            java.lang.Object r4 = r12.get(r8)     // Catch: java.lang.Throwable -> L6e
            x33 r4 = (defpackage.x33) r4     // Catch: java.lang.Throwable -> L6e
            r5 = r2
            r3 = r4
        L2e:
            r9 = 0
            if (r3 == 0) goto L71
            r2 = r4
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> L6e
            int r7 = r3.n()     // Catch: java.lang.Throwable -> L6e
            if (r7 != r0) goto L93
            if (r4 == 0) goto L93
            v62 r7 = r1.n     // Catch: java.lang.Throwable -> L6e
            a21 r7 = r7.r     // Catch: java.lang.Throwable -> L6e
            boolean r7 = r7.n(r13, r4)     // Catch: java.lang.Throwable -> L6e
            if (r7 == 0) goto L93
            r10 = r5
            o62 r6 = r3.d()     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r5 = r6.get()     // Catch: java.lang.Throwable -> L6e
            if (r5 != 0) goto L78
            boolean r13 = r6.b()     // Catch: java.lang.Throwable -> L6e
            if (r13 == 0) goto L71
            int r13 = r1.q     // Catch: java.lang.Throwable -> L6e
            int r13 = r13 + 1
            r1.q = r13     // Catch: java.lang.Throwable -> L6e
            r7 = 3
            x33 r13 = r1.s(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L6e
            int r14 = r1.o     // Catch: java.lang.Throwable -> L6e
            int r14 = r14 + (-1)
            r12.set(r8, r13)     // Catch: java.lang.Throwable -> L6e
            r1.o = r14     // Catch: java.lang.Throwable -> L6e
            goto L71
        L6e:
            r0 = move-exception
            r12 = r0
            goto L9b
        L71:
            r1.unlock()
            r1.u()
            return r9
        L78:
            int r12 = r1.q     // Catch: java.lang.Throwable -> L6e
            int r12 = r12 + 1
            r1.q = r12     // Catch: java.lang.Throwable -> L6e
            int r12 = r6.g()     // Catch: java.lang.Throwable -> L6e
            r0 = 2
            r1.d(r12, r0, r13, r5)     // Catch: java.lang.Throwable -> L6e
            r1.v(r3, r14, r10)     // Catch: java.lang.Throwable -> L6e
            r1.e(r3)     // Catch: java.lang.Throwable -> L6e
            r1.unlock()
            r1.u()
            return r5
        L93:
            r10 = r5
            x33 r3 = r3.m()     // Catch: java.lang.Throwable -> L6e
            r4 = r2
            r5 = r10
            goto L2e
        L9b:
            r1.unlock()
            r1.u()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v62.replace(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
