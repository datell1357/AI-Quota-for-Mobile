package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pg4 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ long o;
    public final /* synthetic */ String p;

    public /* synthetic */ pg4(String str, int i, long j) {
        this.n = i;
        this.o = j;
        this.p = str;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        pb3 pb3VarK0;
        int i = this.n;
        String str = this.p;
        long j = this.o;
        jb3 jb3Var = (jb3) obj;
        switch (i) {
            case 0:
                jb3Var.getClass();
                pb3VarK0 = jb3Var.k0("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    pb3VarK0.h(1, j);
                    pb3VarK0.P(2, str);
                    pb3VarK0.c0();
                    int iT = se0.t(jb3Var);
                    pb3VarK0.close();
                    return Integer.valueOf(iT);
                } finally {
                }
            default:
                jb3Var.getClass();
                pb3VarK0 = jb3Var.k0("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    pb3VarK0.h(1, j);
                    pb3VarK0.P(2, str);
                    pb3VarK0.c0();
                    pb3VarK0.close();
                    return t64.a;
                } finally {
                }
        }
    }
}
