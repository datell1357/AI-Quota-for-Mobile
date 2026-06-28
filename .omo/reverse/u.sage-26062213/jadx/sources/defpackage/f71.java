package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f71 {
    public static final f71 a = new f71();
    public static final Map b = Collections.synchronizedMap(new LinkedHashMap());

    public static d71 a(ck3 ck3Var) {
        Map map = b;
        map.getClass();
        Object obj = map.get(ck3Var);
        if (obj != null) {
            return (d71) obj;
        }
        mk0.f(ck3Var, ". Dependencies should be added at class load time.", "Cannot get dependency ");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009e -> B:21:0x009f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.fh0 r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof defpackage.e71
            if (r0 == 0) goto L13
            r0 = r9
            e71 r0 = (defpackage.e71) r0
            int r1 = r0.x
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.x = r1
            goto L18
        L13:
            e71 r0 = new e71
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r8 = r0.v
            int r9 = r0.x
            r1 = 0
            r2 = 1
            if (r9 == 0) goto L3a
            if (r9 != r2) goto L34
            java.lang.Object r9 = r0.f80u
            java.util.Map r3 = r0.t
            java.util.Map r3 = (java.util.Map) r3
            ck3 r4 = r0.s
            java.util.Iterator r5 = r0.r
            java.util.Map r6 = r0.q
            java.util.Map r6 = (java.util.Map) r6
            defpackage.gg4.T(r8)
            goto L9f
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return r1
        L3a:
            defpackage.gg4.T(r8)
            java.util.Map r8 = defpackage.f71.b
            r8.getClass()
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            int r3 = r8.size()
            int r3 = defpackage.oa2.a0(r3)
            r9.<init>(r3)
            java.util.Set r8 = r8.entrySet()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
            r5 = r8
            r3 = r9
        L5b:
            boolean r8 = r5.hasNext()
            if (r8 == 0) goto Lb7
            java.lang.Object r8 = r5.next()
            java.util.Map$Entry r8 = (java.util.Map.Entry) r8
            java.lang.Object r9 = r8.getKey()
            java.lang.Object r4 = r8.getKey()
            ck3 r4 = (defpackage.ck3) r4
            java.lang.Object r8 = r8.getValue()
            d71 r8 = (defpackage.d71) r8
            cc r6 = new cc
            r7 = 9
            r6.<init>(r7, r8)
            r8 = r3
            java.util.Map r8 = (java.util.Map) r8
            r0.q = r8
            r0.r = r5
            r0.s = r4
            r0.t = r8
            r0.f80u = r9
            r0.x = r2
            p4 r8 = new p4
            r7 = 4
            r8.<init>(r6, r1, r7)
            d01 r6 = defpackage.d01.n
            java.lang.Object r8 = defpackage.ca.O(r6, r8, r0)
            ri0 r6 = defpackage.ri0.n
            if (r8 != r6) goto L9e
            return r6
        L9e:
            r6 = r3
        L9f:
            r4.getClass()
            d71 r8 = a(r4)
            aj0 r8 = r8.b
            if (r8 == 0) goto Laf
            r3.put(r9, r8)
            r3 = r6
            goto L5b
        Laf:
            java.lang.String r8 = "Subscriber "
            java.lang.String r9 = " has not been registered."
            defpackage.mk0.f(r4, r9, r8)
            return r1
        Lb7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f71.b(fh0):java.lang.Object");
    }
}
