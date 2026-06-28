package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nf extends ps {
    public final y84 r;
    public final lm0 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nf(Context context) {
        super(context);
        context.getClass();
        this.r = y84.t;
        this.s = o84.d.a(context, o84.a[2]);
    }

    @Override // defpackage.ps
    public final lm0 a() {
        return this.s;
    }

    @Override // defpackage.ps
    public final y84 b() {
        return this.r;
    }
}
