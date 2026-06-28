package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum km4 implements tn4 {
    /* JADX INFO: Fake field, exist only in values array */
    EF0(0),
    o(1),
    p(2),
    q(3),
    r(4),
    /* JADX INFO: Fake field, exist only in values array */
    EF5(5),
    /* JADX INFO: Fake field, exist only in values array */
    EF6(6),
    s(7),
    /* JADX INFO: Fake field, exist only in values array */
    EF8(8),
    t(9),
    f169u(10),
    /* JADX INFO: Fake field, exist only in values array */
    EF11(11),
    v(-1);

    public final int n;

    km4(int i) {
        this.n = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.n);
    }

    @Override // defpackage.tn4
    public final int zza() {
        if (this != v) {
            return this.n;
        }
        k21.f("Can't get the number of an unknown enum value.");
        return 0;
    }
}
