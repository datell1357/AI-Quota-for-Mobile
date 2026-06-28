package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class s82 {
    public final int a;
    public final yl0 b;
    public final qz0 c;
    public int d;
    public int e;
    public int f;

    public s82(int i) {
        this.a = i;
        if (i <= 0) {
            k21.f("maxSize <= 0");
            throw null;
        }
        this.b = new yl0(1);
        this.c = new qz0(11);
    }

    public Object a(Object obj) {
        obj.getClass();
        return null;
    }

    public final Object b(Object obj) {
        Object objPut;
        obj.getClass();
        synchronized (this.c) {
            yl0 yl0Var = this.b;
            yl0Var.getClass();
            Object obj2 = yl0Var.a.get(obj);
            if (obj2 != null) {
                this.e++;
                return obj2;
            }
            this.f++;
            Object objA = a(obj);
            if (objA == null) {
                return null;
            }
            synchronized (this.c) {
                try {
                    yl0 yl0Var2 = this.b;
                    yl0Var2.getClass();
                    objPut = yl0Var2.a.put(obj, objA);
                    if (objPut != null) {
                        yl0 yl0Var3 = this.b;
                        yl0Var3.getClass();
                        yl0Var3.a.put(obj, objPut);
                    } else {
                        this.d++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                return objPut;
            }
            e(this.a);
            return objA;
        }
    }

    public final Object c(Object obj, Object obj2) {
        Object objPut;
        obj.getClass();
        synchronized (this.c) {
            this.d++;
            yl0 yl0Var = this.b;
            yl0Var.getClass();
            objPut = yl0Var.a.put(obj, obj2);
            if (objPut != null) {
                this.d--;
            }
        }
        e(this.a);
        return objPut;
    }

    public final Object d(Object obj) {
        Object objRemove;
        obj.getClass();
        synchronized (this.c) {
            yl0 yl0Var = this.b;
            yl0Var.getClass();
            objRemove = yl0Var.a.remove(obj);
            if (objRemove != null) {
                this.d--;
            }
        }
        return objRemove;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(int r5) {
        /*
            r4 = this;
        L0:
            qz0 r0 = r4.c
            monitor-enter(r0)
            int r1 = r4.d     // Catch: java.lang.Throwable -> L16
            if (r1 < 0) goto L80
            yl0 r1 = r4.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L19
            int r1 = r4.d     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L80
            goto L19
        L16:
            r4 = move-exception
            goto L88
        L19:
            int r1 = r4.d     // Catch: java.lang.Throwable -> L16
            if (r1 <= r5) goto L7e
            yl0 r1 = r4.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L28
            goto L7e
        L28:
            yl0 r1 = r4.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.a     // Catch: java.lang.Throwable -> L16
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L16
            r1.getClass()     // Catch: java.lang.Throwable -> L16
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L16
            r3 = 0
            if (r2 == 0) goto L49
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r2 == 0) goto L43
            goto L58
        L43:
            r2 = 0
            java.lang.Object r3 = r1.get(r2)     // Catch: java.lang.Throwable -> L16
            goto L58
        L49:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L16
            if (r2 != 0) goto L54
            goto L58
        L54:
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L16
        L58:
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> L16
            if (r3 != 0) goto L5e
            monitor-exit(r0)
            return
        L5e:
            java.lang.Object r1 = r3.getKey()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r2 = r3.getValue()     // Catch: java.lang.Throwable -> L16
            yl0 r3 = r4.b     // Catch: java.lang.Throwable -> L16
            r3.getClass()     // Catch: java.lang.Throwable -> L16
            r1.getClass()     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r3 = r3.a     // Catch: java.lang.Throwable -> L16
            r3.remove(r1)     // Catch: java.lang.Throwable -> L16
            int r1 = r4.d     // Catch: java.lang.Throwable -> L16
            r2.getClass()     // Catch: java.lang.Throwable -> L16
            int r1 = r1 + (-1)
            r4.d = r1     // Catch: java.lang.Throwable -> L16
            monitor-exit(r0)
            goto L0
        L7e:
            monitor-exit(r0)
            return
        L80:
            java.lang.String r4 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L16
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L16
            throw r5     // Catch: java.lang.Throwable -> L16
        L88:
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s82.e(int):void");
    }

    public final String toString() {
        String str;
        synchronized (this.c) {
            try {
                int i = this.e;
                int i2 = this.f + i;
                str = "LruCache[maxSize=" + this.a + ",hits=" + this.e + ",misses=" + this.f + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
