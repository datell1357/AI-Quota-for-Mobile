package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ay0 implements ai3, by0 {
    public final ai3 a;
    public final int b;

    public ay0(ai3 ai3Var, int i) {
        ai3Var.getClass();
        this.a = ai3Var;
        this.b = i;
        if (i >= 0) {
            return;
        }
        k21.a(i, "count must be non-negative, but was ", 46);
        throw null;
    }

    @Override // defpackage.by0
    public final ai3 a(int i) {
        int i2 = this.b + i;
        return i2 < 0 ? new ay0(this, i) : new ay0(this.a, i2);
    }

    @Override // defpackage.ai3
    public final Iterator iterator() {
        return new zx0(this);
    }
}
