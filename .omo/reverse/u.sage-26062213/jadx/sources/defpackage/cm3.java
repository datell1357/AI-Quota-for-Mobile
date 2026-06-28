package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cm3 implements gm0 {
    public final p4 a;
    public final u4 b;
    public final Context c;
    public final String d;
    public final nv3 e;
    public final Set f;

    public cm3(Context context, String str, Set set, p4 p4Var, u4 u4Var) {
        LinkedHashSet linkedHashSet;
        context.getClass();
        set.getClass();
        h4 h4Var = new h4(29, context, str);
        this.a = p4Var;
        this.b = u4Var;
        this.c = context;
        this.d = str;
        this.e = new nv3(h4Var);
        if (set == em3.a) {
            linkedHashSet = null;
        } else {
            Set set2 = set;
            if (set2 instanceof Collection) {
                linkedHashSet = new LinkedHashSet(set2);
            } else {
                linkedHashSet = new LinkedHashSet();
                o70.A0(set2, linkedHashSet);
            }
        }
        this.f = linkedHashSet;
    }

    @Override // defpackage.gm0
    public final void a() throws IOException {
        Context context;
        nv3 nv3Var = this.e;
        SharedPreferences.Editor editorEdit = ((SharedPreferences) nv3Var.getValue()).edit();
        Set set = this.f;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            p61.k("Unable to delete migrated keys from SharedPreferences.");
            return;
        }
        if (((SharedPreferences) nv3Var.getValue()).getAll().isEmpty() && (context = this.c) != null) {
            context.deleteSharedPreferences(this.d);
        }
        if (set != null) {
            set.clear();
        }
    }

    @Override // defpackage.gm0
    public final Object b(Object obj, rd rdVar) {
        return this.b.d(new fm3((SharedPreferences) this.e.getValue(), this.f), obj, rdVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.gm0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.dh0 r5, java.lang.Object r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.bm3
            if (r0 == 0) goto L13
            r0 = r5
            bm3 r0 = (defpackage.bm3) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L1a
        L13:
            bm3 r0 = new bm3
            fh0 r5 = (defpackage.fh0) r5
            r0.<init>(r4, r5)
        L1a:
            java.lang.Object r5 = r0.q
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            defpackage.gg4.T(r5)
            goto L3e
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L2e:
            defpackage.gg4.T(r5)
            r0.s = r2
            p4 r5 = r4.a
            java.lang.Object r5 = r5.f(r6, r0)
            ri0 r6 = defpackage.ri0.n
            if (r5 != r6) goto L3e
            return r6
        L3e:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L49
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L49:
            nv3 r5 = r4.e
            r6 = 0
            java.util.Set r4 = r4.f
            if (r4 != 0) goto L66
            java.lang.Object r4 = r5.getValue()
            android.content.SharedPreferences r4 = (android.content.SharedPreferences) r4
            java.util.Map r4 = r4.getAll()
            r4.getClass()
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L64
            goto L92
        L64:
            r2 = r6
            goto L92
        L66:
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.lang.Object r5 = r5.getValue()
            android.content.SharedPreferences r5 = (android.content.SharedPreferences) r5
            boolean r0 = r4 instanceof java.util.Collection
            if (r0 == 0) goto L7c
            r0 = r4
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L7c
            goto L64
        L7c:
            java.util.Iterator r4 = r4.iterator()
        L80:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L64
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r5.contains(r0)
            if (r0 == 0) goto L80
        L92:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r2)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cm3.c(dh0, java.lang.Object):java.lang.Object");
    }
}
