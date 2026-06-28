package defpackage;

import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sh0 implements r82 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    @Override // defpackage.r82
    public final Object a(String str) {
        return new rh0(this, str);
    }

    public final void b(String str, ph0 ph0Var) {
        this.a.put(str.toLowerCase(Locale.ENGLISH), ph0Var);
    }
}
