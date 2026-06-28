package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o85 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ vc5 o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ o95 q;
    public final /* synthetic */ AbstractSafeParcelable r;

    public o85(o95 o95Var, vc5 vc5Var, boolean z, fq4 fq4Var) {
        this.n = 2;
        this.o = vc5Var;
        this.p = z;
        this.r = fq4Var;
        Objects.requireNonNull(o95Var);
        this.q = o95Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i = this.n;
        AbstractSafeParcelable abstractSafeParcelable = this.r;
        boolean z = this.p;
        vc5 vc5Var = this.o;
        o95 o95Var = this.q;
        switch (i) {
            case 0:
                n05 n05Var = o95Var.d;
                if (n05Var != null) {
                    Preconditions.checkNotNull(vc5Var);
                    o95Var.N(n05Var, z ? null : (vb5) abstractSafeParcelable, vc5Var);
                    o95Var.I();
                } else {
                    a25 a25Var = ((r45) o95Var.a).f;
                    r45.l(a25Var);
                    a25Var.f.a("Discarding data. Failed to set user property");
                }
                break;
            case 1:
                n05 n05Var2 = o95Var.d;
                if (n05Var2 != null) {
                    Preconditions.checkNotNull(vc5Var);
                    o95Var.N(n05Var2, z ? null : (bu4) abstractSafeParcelable, vc5Var);
                    o95Var.I();
                } else {
                    a25 a25Var2 = ((r45) o95Var.a).f;
                    r45.l(a25Var2);
                    a25Var2.f.a("Discarding data. Failed to send event to service");
                }
                break;
            default:
                n05 n05Var3 = o95Var.d;
                if (n05Var3 != null) {
                    Preconditions.checkNotNull(vc5Var);
                    o95Var.N(n05Var3, z ? null : (fq4) abstractSafeParcelable, vc5Var);
                    o95Var.I();
                } else {
                    a25 a25Var3 = ((r45) o95Var.a).f;
                    r45.l(a25Var3);
                    a25Var3.f.a("Discarding data. Failed to send conditional user property to service");
                }
                break;
        }
    }

    public /* synthetic */ o85(o95 o95Var, vc5 vc5Var, boolean z, AbstractSafeParcelable abstractSafeParcelable, int i) {
        this.n = i;
        this.o = vc5Var;
        this.p = z;
        this.r = abstractSafeParcelable;
        this.q = o95Var;
    }
}
