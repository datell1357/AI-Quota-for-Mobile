package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lo1 {
    public static final i3 a = new i3(g01.n);
    public static final i3 b;
    public static final i3 c;
    public static final i3 d;

    static {
        qn0.c(BlockstoreClient.MAX_SIZE);
        au0 au0Var = new au0(BlockstoreClient.MAX_SIZE);
        qn0.c(BlockstoreClient.MAX_SIZE);
        b = new i3(new ln3(au0Var, new au0(BlockstoreClient.MAX_SIZE)));
        c = new i3(Boolean.FALSE);
        d = new i3(Boolean.TRUE);
    }
}
