package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gc5 extends it4 {
    public final sg0 d;
    public final pw3 e;
    public final /* synthetic */ wc5 f;
    public final /* synthetic */ wc5 g;

    public gc5(wc5 wc5Var, pw3 pw3Var, String str) {
        this.g = wc5Var;
        sg0 sg0Var = new sg0("OnRequestInstallCallback");
        this.f = wc5Var;
        attachInterface(this, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
        this.d = sg0Var;
        this.e = pw3Var;
    }
}
