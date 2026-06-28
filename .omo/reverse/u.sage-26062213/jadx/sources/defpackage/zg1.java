package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zg1 implements as3 {
    public final j94 a;
    public final pw3 b;

    public zg1(j94 j94Var, pw3 pw3Var) {
        this.a = j94Var;
        this.b = pw3Var;
    }

    @Override // defpackage.as3
    public final boolean a(Exception exc) {
        this.b.c(exc);
        return true;
    }

    @Override // defpackage.as3
    public final boolean b(to toVar) {
        if (toVar.b == 4 && !this.a.a(toVar)) {
            String str = toVar.c;
            if (str != null) {
                this.b.b(new lo(str, toVar.e, toVar.f));
                return true;
            }
            q73.r("Null token");
        }
        return false;
    }
}
