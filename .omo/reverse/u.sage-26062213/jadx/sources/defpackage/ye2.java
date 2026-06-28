package defpackage;

import java.io.FileInputStream;
import java.nio.channels.FileLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ye2 extends fh0 {
    public hh2 q;
    public FileInputStream r;
    public FileLock s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f420u;
    public final /* synthetic */ ze2 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ye2(ze2 ze2Var, fh0 fh0Var) {
        super(fh0Var);
        this.v = ze2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f420u = obj;
        this.w |= Integer.MIN_VALUE;
        return this.v.e(null, this);
    }
}
