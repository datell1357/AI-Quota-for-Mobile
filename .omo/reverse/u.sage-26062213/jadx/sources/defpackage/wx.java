package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class wx extends rd2 {
    public final wc b;

    public wx(wc wcVar) {
        this.b = wcVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new yx(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof wx) {
            return this.b == ((wx) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        yx yxVar = (yx) md2Var;
        wc wcVar = this.b;
        yxVar.B = wcVar;
        if (yxVar.A) {
            wcVar.k(yxVar.C);
        }
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
