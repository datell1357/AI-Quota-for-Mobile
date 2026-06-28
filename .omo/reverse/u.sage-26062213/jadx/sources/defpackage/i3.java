package defpackage;

import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i3 {
    public Object a;

    public void a(Object obj, g24 g24Var) {
        if (this.a != obj) {
            throw new ConcurrentModificationException();
        }
        this.a = g24Var;
    }
}
