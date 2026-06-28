package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yr0 implements ai3 {
    public final /* synthetic */ int a;
    public final Object b;
    public final ef1 c;

    public yr0(CharSequence charSequence, df1 df1Var) {
        this.a = 0;
        charSequence.getClass();
        this.b = charSequence;
        this.c = df1Var;
    }

    @Override // defpackage.ai3
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new xr0(this);
            case 1:
                return new x51(this);
            default:
                return new ug1(this);
        }
    }

    public /* synthetic */ yr0(Object obj, pe1 pe1Var, int i) {
        this.a = i;
        this.b = obj;
        this.c = pe1Var;
    }
}
