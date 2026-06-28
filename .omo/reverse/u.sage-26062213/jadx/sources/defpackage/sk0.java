package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sk0 implements j41 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ sk0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new eh((Context) ((sk0) obj).b, new pr3(12), new pr3(9), 10);
            default:
                return obj;
        }
    }
}
