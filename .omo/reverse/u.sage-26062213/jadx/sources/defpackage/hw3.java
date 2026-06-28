package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hw3 implements ai3 {
    public final /* synthetic */ int a;
    public final ai3 b;
    public final pe1 c;

    public /* synthetic */ hw3(ai3 ai3Var, pe1 pe1Var, int i) {
        this.a = i;
        this.b = ai3Var;
        this.c = pe1Var;
    }

    @Override // defpackage.ai3
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new x51(this);
            default:
                return new g14(this);
        }
    }
}
