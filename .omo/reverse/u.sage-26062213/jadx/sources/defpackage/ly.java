package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ly implements pe1 {
    public final /* synthetic */ int n;
    public Object o;

    public /* synthetic */ ly(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        long j;
        switch (this.n) {
            case 0:
                ((q20) this.o).cancel();
                return t64.a;
            case 1:
                ((h23) this.o).d();
                return t64.a;
            case 2:
                ((List) this.o).get(((Number) obj).intValue());
                return null;
            case 3:
                uo3 uo3Var = (uo3) obj;
                synchronized (wo3.c) {
                    j = wo3.e;
                    wo3.e = 1 + j;
                }
                return new a23(j, uo3Var, (pe1) this.o);
            case 4:
                o20 o20Var = (o20) this.o;
                t64 t64Var = t64.a;
                o20Var.g(t64Var);
                return t64Var;
            case 5:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                fw2 fw2Var = (fw2) this.o;
                if (fw2Var != null) {
                    fw2Var.d = zBooleanValue;
                }
                return t64.a;
            default:
                ((ArrayList) this.o).get(((Number) obj).intValue());
                return null;
        }
    }

    public /* synthetic */ ly() {
        this.n = 5;
    }
}
