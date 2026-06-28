package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum lm4 implements tn4 {
    o(0),
    p(1),
    q(2),
    r(3),
    s(-1);

    public final int n;

    lm4(int i) {
        this.n = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.n);
    }

    @Override // defpackage.tn4
    public final int zza() {
        if (this != s) {
            return this.n;
        }
        k21.f("Can't get the number of an unknown enum value.");
        return 0;
    }
}
