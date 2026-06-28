package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class me5 {
    public byte a;

    public final sf5 a() {
        if (this.a == 3) {
            return new sf5();
        }
        StringBuilder sb = new StringBuilder();
        if ((this.a & 1) == 0) {
            sb.append(" appUpdateType");
        }
        if ((this.a & 2) == 0) {
            sb.append(" allowAssetPackDeletion");
        }
        k21.n("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
