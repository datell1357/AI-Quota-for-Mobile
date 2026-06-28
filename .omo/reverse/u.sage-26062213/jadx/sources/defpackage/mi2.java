package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mi2 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Bundle o;

    public /* synthetic */ mi2(int i, Bundle bundle) {
        this.n = i;
        this.o = bundle;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        boolean zContainsKey;
        int i = this.n;
        Bundle bundle = this.o;
        String str = (String) obj;
        switch (i) {
            case 0:
                str.getClass();
                zContainsKey = bundle.containsKey(str);
                break;
            default:
                str.getClass();
                zContainsKey = bundle.containsKey(str);
                break;
        }
        return Boolean.valueOf(!zContainsKey);
    }
}
