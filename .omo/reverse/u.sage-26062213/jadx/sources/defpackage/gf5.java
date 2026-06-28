package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gf5 implements Consumer {
    public final /* synthetic */ int a;

    public /* synthetic */ gf5(int i) {
        this.a = i;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ void accept(Object obj) {
        switch (this.a) {
            case 0:
                if (obj != null) {
                    throw new ClassCastException();
                }
                qo3 qo3Var = hf5.t;
                throw null;
            default:
                throw di0.o(obj);
        }
    }
}
