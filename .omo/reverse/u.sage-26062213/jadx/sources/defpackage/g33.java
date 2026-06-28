package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g33 extends bv3 implements ff1 {
    public /* synthetic */ qc A;
    public final /* synthetic */ h33 B;
    public List r;
    public List s;
    public List t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public lg2 f105u;
    public lg2 v;
    public lg2 w;
    public Set x;
    public lg2 y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g33(h33 h33Var, dh0 dh0Var) {
        super(3, dh0Var);
        this.B = h33Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void t(defpackage.h33 r22, java.util.List r23, java.util.List r24, java.util.List r25, defpackage.lg2 r26, defpackage.lg2 r27, defpackage.lg2 r28, defpackage.lg2 r29) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g33.t(h33, java.util.List, java.util.List, java.util.List, lg2, lg2, lg2, lg2):void");
    }

    public static final void u(List list, h33 h33Var) {
        list.clear();
        synchronized (h33Var.c) {
            try {
                ArrayList arrayList = h33Var.k;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    list.add((oe2) arrayList.get(i));
                }
                h33Var.k.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        g33 g33Var = new g33(this.B, (dh0) obj3);
        g33Var.A = (qc) obj2;
        g33Var.q(t64.a);
        return ri0.n;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00a0 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x013e -> B:44:0x0140). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x01ed -> B:12:0x009b). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r29) {
        /*
            Method dump skipped, instruction units count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g33.q(java.lang.Object):java.lang.Object");
    }
}
