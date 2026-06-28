package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mf extends n84 {
    public final /* synthetic */ int e;
    public final String f;
    public final y84 g;
    public final String h;
    public final xr i;
    public final n1 j;
    public final ps k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mf(Context context, int i) {
        super(context);
        this.e = i;
        context.getClass();
        switch (i) {
            case 1:
                super(context);
                this.f = "GeminiUsageDataFetcher";
                this.i = new gg1(context);
                this.j = new jf(context, 4);
                this.k = new hg1(context);
                this.g = y84.s;
                this.h = "gemini-cli";
                break;
            default:
                this.f = "AntigravityUsageDataFetcher";
                this.i = new lf(context);
                this.j = new jf(context, 0);
                this.k = new nf(context);
                this.g = y84.t;
                this.h = "antigravity/2.0.0 android/unknown";
                break;
        }
    }

    @Override // defpackage.n84
    public final n1 b() {
        switch (this.e) {
        }
        return (jf) this.j;
    }

    @Override // defpackage.n84
    public final String c() {
        switch (this.e) {
        }
        return this.f;
    }

    @Override // defpackage.n84
    public final xr d() {
        switch (this.e) {
            case 0:
                return (lf) this.i;
            default:
                return (gg1) this.i;
        }
    }

    @Override // defpackage.n84
    public final y84 e() {
        switch (this.e) {
        }
        return this.g;
    }

    @Override // defpackage.n84
    public final ps f() {
        switch (this.e) {
            case 0:
                return (nf) this.k;
            default:
                return (hg1) this.k;
        }
    }

    @Override // defpackage.n84
    public final String g() {
        switch (this.e) {
        }
        return this.h;
    }
}
