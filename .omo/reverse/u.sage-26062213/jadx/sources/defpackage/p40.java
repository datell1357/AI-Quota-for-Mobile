package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p40 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ ph3 o;

    public /* synthetic */ p40(ph3 ph3Var, int i) {
        this.n = i;
        this.o = ph3Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        boolean z;
        switch (this.n) {
            case 0:
                b24 b24Var = (b24) obj;
                b24Var.getClass();
                throw null;
            default:
                za zaVar = (za) obj;
                Boolean boolValueOf = zaVar.a.isToggle() ? Boolean.valueOf(zaVar.a.getToggleValue()) : null;
                if (boolValueOf != null) {
                    wz3 wz3Var = boolValueOf.booleanValue() ? wz3.n : wz3.o;
                    kx1[] kx1VarArr = nh3.a;
                    oh3 oh3Var = lh3.I;
                    kx1 kx1Var = nh3.a[26];
                    this.o.a(oh3Var, wz3Var);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
        }
    }
}
