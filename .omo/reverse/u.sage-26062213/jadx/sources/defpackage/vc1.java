package defpackage;

import android.os.Handler;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vc1 extends sc1 {
    public final SignInHubActivity n;
    public final SignInHubActivity o;
    public final Handler p;
    public final id1 q;

    public vc1(SignInHubActivity signInHubActivity) {
        Handler handler = new Handler();
        this.q = new id1();
        this.n = signInHubActivity;
        this.o = signInHubActivity;
        this.p = handler;
    }
}
