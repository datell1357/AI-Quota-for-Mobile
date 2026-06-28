package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sf5 {
    public static me5 a() {
        me5 me5Var = new me5();
        me5Var.a = (byte) (((byte) (me5Var.a | 1)) | 2);
        return me5Var;
    }

    public final boolean equals(Object obj) {
        return obj == this || (obj instanceof sf5);
    }

    public final int hashCode() {
        return -722378861;
    }

    public final String toString() {
        return "AppUpdateOptions{appUpdateType=1, allowAssetPackDeletion=false}";
    }
}
