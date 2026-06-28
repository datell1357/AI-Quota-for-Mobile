package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xc5 extends f95 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;

    public /* synthetic */ xc5(int i, Object obj) {
        this.o = i;
        this.p = obj;
    }

    @Override // defpackage.f95
    public final void a() {
        switch (this.o) {
            case 0:
                synchronized (((tf5) this.p).f) {
                    try {
                        if (((tf5) this.p).k.get() > 0 && ((tf5) this.p).k.decrementAndGet() > 0) {
                            ((tf5) this.p).b.a("Leaving the connection open for other ongoing calls.", new Object[0]);
                            return;
                        }
                        tf5 tf5Var = (tf5) this.p;
                        if (tf5Var.m != null) {
                            tf5Var.b.a("Unbind from service.", new Object[0]);
                            tf5 tf5Var2 = (tf5) this.p;
                            tf5Var2.a.unbindService(tf5Var2.l);
                            tf5 tf5Var3 = (tf5) this.p;
                            tf5Var3.g = false;
                            tf5Var3.m = null;
                            tf5Var3.l = null;
                        }
                        ((tf5) this.p).d();
                        return;
                    } finally {
                    }
                }
            default:
                tf5 tf5Var4 = ((ff5) this.p).a;
                tf5Var4.b.a("unlinkToDeath", new Object[0]);
                tf5Var4.m.asBinder().unlinkToDeath(tf5Var4.j, 0);
                tf5Var4.m = null;
                tf5Var4.g = false;
                return;
        }
    }
}
