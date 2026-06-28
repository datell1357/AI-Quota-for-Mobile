package defpackage;

import java.text.DecimalFormat;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ts1 {
    public static final ts1 b = new ts1(0);
    public static final ts1 c = new ts1(1);
    public static final ts1 d = new ts1(2);
    public final /* synthetic */ int a;

    public /* synthetic */ ts1(int i) {
        this.a = i;
    }

    public final String a(double d2) {
        switch (this.a) {
            case 0:
                return ix.k((int) Math.floor(d2), 0, 100) + "%";
            case 1:
                return new DecimalFormat("0.#").format(d2) + "%";
            default:
                return ix.k(is0.U(d2), 0, 100) + "%";
        }
    }
}
