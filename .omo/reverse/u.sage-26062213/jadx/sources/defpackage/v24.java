package defpackage;

import androidx.work.impl.WorkDatabase_Impl;
import com.google.api.client.http.HttpMethods;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v24 {
    public static final String[] l = {"INSERT", "UPDATE", HttpMethods.DELETE};
    public final WorkDatabase_Impl a;
    public final LinkedHashMap b;
    public final LinkedHashMap c;
    public final boolean d;
    public final o e;
    public final String[] g;
    public final mu0 h;
    public final dh1 i;
    public final AtomicBoolean j = new AtomicBoolean(false);
    public ne1 k = new jx3(3);
    public final LinkedHashMap f = new LinkedHashMap();

    public v24(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, o oVar) {
        String lowerCase;
        this.a = workDatabase_Impl;
        this.b = linkedHashMap;
        this.c = linkedHashMap2;
        this.d = z;
        this.e = oVar;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            this.f.put(lowerCase2, Integer.valueOf(i));
            String str2 = (String) this.b.get(strArr[i]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i] = lowerCase2;
        }
        this.g = strArr2;
        for (Map.Entry entry : this.b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            lowerCase3.getClass();
            if (this.f.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                lowerCase4.getClass();
                LinkedHashMap linkedHashMap3 = this.f;
                linkedHashMap3.put(lowerCase4, oa2.Z(lowerCase3, linkedHashMap3));
            }
        }
        this.h = new mu0(this.g.length);
        int length2 = this.g.length;
        dh1 dh1Var = new dh1();
        dh1Var.n = xr3.a(new int[length2]);
        this.i = dh1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.v24 r4, defpackage.nw2 r5, defpackage.fh0 r6) {
        /*
            boolean r0 = r6 instanceof defpackage.n24
            if (r0 == 0) goto L13
            r0 = r6
            n24 r0 = (defpackage.n24) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            n24 r0 = new n24
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.r
            int r6 = r0.t
            r1 = 2
            r2 = 1
            ri0 r3 = defpackage.ri0.n
            if (r6 == 0) goto L3d
            if (r6 == r2) goto L35
            if (r6 != r1) goto L2e
            java.lang.Object r5 = r0.q
            java.util.Set r5 = (java.util.Set) r5
            defpackage.gg4.T(r4)
            return r5
        L2e:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L35:
            java.lang.Object r5 = r0.q
            nw2 r5 = (defpackage.nw2) r5
            defpackage.gg4.T(r4)
            goto L54
        L3d:
            defpackage.gg4.T(r4)
            jd3 r4 = new jd3
            r6 = 16
            r4.<init>(r6)
            r0.q = r5
            r0.t = r2
            java.lang.String r6 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r4 = r5.a(r6, r4, r0)
            if (r4 != r3) goto L54
            goto L6b
        L54:
            java.util.Set r4 = (java.util.Set) r4
            r6 = r4
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r6 = r6.isEmpty()
            if (r6 != 0) goto L6c
            r0.q = r4
            r0.t = r1
            java.lang.String r6 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r5 = defpackage.se0.j(r5, r6, r0)
            if (r5 != r3) goto L6c
        L6b:
            return r3
        L6c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v24.a(v24, nw2, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(defpackage.v24 r11, defpackage.fh0 r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v24.b(v24, fh0):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
    
        if (defpackage.se0.j(r1, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00de, code lost:
    
        if (defpackage.se0.j(r10, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e0, code lost:
    
        return r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00de -> B:28:0x00e1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.v24 r17, defpackage.d14 r18, int r19, defpackage.fh0 r20) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v24.c(v24, d14, int, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008c -> B:19:0x008f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(defpackage.v24 r7, defpackage.d14 r8, int r9, defpackage.fh0 r10) {
        /*
            r7.getClass()
            boolean r0 = r10 instanceof defpackage.s24
            if (r0 == 0) goto L16
            r0 = r10
            s24 r0 = (defpackage.s24) r0
            int r1 = r0.x
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.x = r1
            goto L1b
        L16:
            s24 r0 = new s24
            r0.<init>(r7, r10)
        L1b:
            java.lang.Object r10 = r0.v
            int r1 = r0.x
            r2 = 1
            if (r1 == 0) goto L3b
            if (r1 != r2) goto L34
            int r7 = r0.f306u
            int r8 = r0.t
            java.lang.String[] r9 = r0.s
            java.lang.String r1 = r0.r
            nw2 r3 = r0.q
            defpackage.gg4.T(r10)
            r10 = r9
            r9 = r3
            goto L8f
        L34:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            r7 = 0
            return r7
        L3b:
            defpackage.gg4.T(r10)
            java.lang.String[] r7 = r7.g
            r7 = r7[r9]
            java.lang.String[] r9 = defpackage.v24.l
            r10 = 0
            r1 = 3
            r6 = r1
            r1 = r7
            r7 = r6
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L4d:
            if (r8 >= r7) goto L91
            r3 = r10[r8]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "room_table_modification_trigger_"
            r4.<init>(r5)
            r4.append(r1)
            r5 = 95
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "DROP TRIGGER IF EXISTS `"
            r4.<init>(r5)
            r4.append(r3)
            r3 = 96
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            r0.q = r9
            r0.r = r1
            r0.s = r10
            r0.t = r8
            r0.f306u = r7
            r0.x = r2
            java.lang.Object r3 = defpackage.se0.j(r9, r3, r0)
            ri0 r4 = defpackage.ri0.n
            if (r3 != r4) goto L8f
            return r4
        L8f:
            int r8 = r8 + r2
            goto L4d
        L91:
            t64 r7 = defpackage.t64.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v24.d(v24, d14, int, fh0):java.lang.Object");
    }

    public final void e(ne1 ne1Var, ne1 ne1Var2) {
        ne1Var.getClass();
        ne1Var2.getClass();
        if (this.j.compareAndSet(false, true)) {
            ne1Var.a();
            bh0 bh0Var = this.a.a;
            dh0 dh0Var = null;
            if (bh0Var != null) {
                ca.y(bh0Var, new mi0(), null, new d93(this, ne1Var2, dh0Var, 9), 2);
            } else {
                nt1.X("coroutineScope");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(defpackage.fh0 r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.t24
            if (r0 == 0) goto L13
            r0 = r7
            t24 r0 = (defpackage.t24) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            t24 r0 = new t24
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            gw4 r6 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L28
            goto L52
        L28:
            r7 = move-exception
            goto L58
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r2
        L30:
            defpackage.gg4.T(r7)
            androidx.work.impl.WorkDatabase_Impl r7 = r6.a
            gw4 r1 = r7.f
            boolean r4 = r1.h()
            if (r4 == 0) goto L5c
            q24 r4 = new q24     // Catch: java.lang.Throwable -> L56
            r5 = 2
            r4.<init>(r6, r2, r5)     // Catch: java.lang.Throwable -> L56
            r0.q = r1     // Catch: java.lang.Throwable -> L56
            r0.t = r3     // Catch: java.lang.Throwable -> L56
            r6 = 0
            java.lang.Object r6 = r7.q(r6, r4, r0)     // Catch: java.lang.Throwable -> L56
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L51
            return r7
        L51:
            r6 = r1
        L52:
            r6.G()
            goto L5c
        L56:
            r7 = move-exception
            r6 = r1
        L58:
            r6.G()
            throw r7
        L5c:
            t64 r6 = defpackage.t64.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v24.f(fh0):java.lang.Object");
    }
}
