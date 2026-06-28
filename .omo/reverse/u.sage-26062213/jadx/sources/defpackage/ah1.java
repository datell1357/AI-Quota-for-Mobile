package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ah1 implements as3 {
    public final pw3 a;

    public ah1(pw3 pw3Var) {
        this.a = pw3Var;
    }

    @Override // defpackage.as3
    public final boolean a(Exception exc) {
        return false;
    }

    @Override // defpackage.as3
    public final boolean b(to toVar) {
        int i = toVar.b;
        if (i != 3 && i != 4 && i != 5) {
            return false;
        }
        this.a.d(toVar.a);
        return true;
    }
}
