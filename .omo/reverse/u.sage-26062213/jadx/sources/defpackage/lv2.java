package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lv2 extends CancellationException {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lv2(String str, int i) {
        super(str);
        this.n = i;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        switch (this.n) {
            case 0:
                setStackTrace(gg4.c);
                break;
            case 1:
                setStackTrace(on4.a);
                break;
            default:
                setStackTrace(bi4.o);
                break;
        }
        return this;
    }
}
