package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e71 extends fh0 {
    public Map q;
    public Iterator r;
    public ck3 s;
    public Map t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f80u;
    public /* synthetic */ Object v;
    public final /* synthetic */ f71 w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e71(f71 f71Var, fh0 fh0Var) {
        super(fh0Var);
        this.w = f71Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        return this.w.b(this);
    }
}
