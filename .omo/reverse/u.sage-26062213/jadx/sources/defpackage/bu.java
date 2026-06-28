package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bu extends bv3 implements ff1 {
    public /* synthetic */ boolean r;
    public /* synthetic */ String s;

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        bu buVar = new bu(3, (dh0) obj3);
        buVar.r = zBooleanValue;
        buVar.s = (String) obj2;
        return buVar.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        boolean z = this.r;
        String str = this.s;
        gg4.T(obj);
        return new js2(Boolean.valueOf(z), str);
    }
}
