package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zw2 {
    public final ConcurrentHashMap a;
    public final ConcurrentHashMap b;

    public zw2(ArrayList arrayList) {
        this.a = new ConcurrentHashMap();
        this.b = new ConcurrentHashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            t03 t03Var = (t03) obj;
            sv0 sv0Var = t03Var.a;
            Iterator it = t03Var.b.iterator();
            while (it.hasNext()) {
                this.a.put((String) it.next(), sv0Var);
            }
            List list = t03Var.c;
            if (list != null) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    this.b.put((String) it2.next(), sv0Var);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            goto Lc
        L4:
            java.lang.String r1 = "."
            boolean r1 = r8.startsWith(r1)
            if (r1 == 0) goto Ld
        Lc:
            return r0
        Ld:
            java.lang.String r8 = defpackage.gg4.M(r8)
            r1 = r0
        L12:
            if (r8 == 0) goto L71
            java.lang.String r2 = java.net.IDN.toUnicode(r8)
            java.util.concurrent.ConcurrentHashMap r3 = r7.b
            if (r3 != 0) goto L1e
            r3 = r0
            goto L24
        L1e:
            java.lang.Object r3 = r3.get(r2)
            sv0 r3 = (defpackage.sv0) r3
        L24:
            if (r3 == 0) goto L27
            return r8
        L27:
            java.util.concurrent.ConcurrentHashMap r3 = r7.a
            if (r3 != 0) goto L2d
            r2 = r0
            goto L33
        L2d:
            java.lang.Object r2 = r3.get(r2)
            sv0 r2 = (defpackage.sv0) r2
        L33:
            sv0 r4 = defpackage.sv0.o
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L71
            goto L6d
        L3a:
            r2 = 46
            int r2 = r8.indexOf(r2)
            r5 = -1
            if (r2 == r5) goto L4a
            int r2 = r2 + 1
            java.lang.String r2 = r8.substring(r2)
            goto L4b
        L4a:
            r2 = r0
        L4b:
            if (r2 == 0) goto L6e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "*."
            r5.<init>(r6)
            java.lang.String r6 = java.net.IDN.toUnicode(r2)
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            if (r3 != 0) goto L63
            r3 = r0
            goto L69
        L63:
            java.lang.Object r3 = r3.get(r5)
            sv0 r3 = (defpackage.sv0) r3
        L69:
            if (r3 == 0) goto L6e
            if (r3 != r4) goto L71
        L6d:
            return r8
        L6e:
            r1 = r8
            r8 = r2
            goto L12
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zw2.a(java.lang.String):java.lang.String");
    }

    public zw2(List list) {
        w80.L(list, "Domain suffix rules");
        this.a = new ConcurrentHashMap(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.a.put((String) it.next(), sv0.n);
        }
        this.b = new ConcurrentHashMap();
    }

    public zw2() {
        this.a = new ConcurrentHashMap();
        this.b = new ConcurrentHashMap();
    }
}
