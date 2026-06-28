package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zw1 extends fh0 {
    public zn0 q;
    public d90 r;
    public LinkedHashMap s;
    public String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f447u;
    public final /* synthetic */ d90 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zw1(d90 d90Var, dr drVar) {
        super(drVar);
        this.v = d90Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f447u = obj;
        this.w |= Integer.MIN_VALUE;
        return d90.a(this.v, null, this);
    }
}
