package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ob5 {
    public final pb5 a;
    public int b = 1;
    public long c = a();

    public ob5(pb5 pb5Var) {
        this.a = pb5Var;
    }

    public final long a() {
        pb5 pb5Var = this.a;
        Preconditions.checkNotNull(pb5Var);
        long jLongValue = ((Long) e05.v.a(null)).longValue();
        long jLongValue2 = ((Long) e05.w.a(null)).longValue();
        for (int i = 1; i < this.b; i++) {
            jLongValue += jLongValue;
            if (jLongValue >= jLongValue2) {
                break;
            }
        }
        return Math.min(jLongValue, jLongValue2) + pb5Var.f().currentTimeMillis();
    }
}
