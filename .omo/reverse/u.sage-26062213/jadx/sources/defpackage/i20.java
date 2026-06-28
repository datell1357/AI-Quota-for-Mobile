package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i20 implements ba1 {
    public static final i20 a = new i20();
    public static Boolean b;

    @Override // defpackage.ba1
    public final boolean c() {
        Boolean bool = b;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw di0.m("canFocus is read before it is written");
    }

    @Override // defpackage.ba1
    public final void d(boolean z) {
        b = Boolean.valueOf(z);
    }
}
