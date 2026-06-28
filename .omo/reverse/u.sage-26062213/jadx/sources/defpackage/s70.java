package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s70 implements ai3 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ s70(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ai3
    public final Iterator iterator() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((Iterable) obj).iterator();
            case 1:
                return new o32(this);
            case 2:
                return (Iterator) obj;
            default:
                return new n32((String) obj);
        }
    }
}
