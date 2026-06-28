package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q50 extends n84 {
    public final /* synthetic */ int e;
    public final String f;
    public final y84 g;
    public final xr h;
    public final n1 i;
    public final ps j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q50(Context context, int i) {
        super(context);
        this.e = i;
        context.getClass();
        switch (i) {
            case 1:
                super(context);
                this.f = "CodexUsageDataFetcher";
                this.h = new f70(context);
                this.i = new jf(context, 2);
                this.j = new g70(context);
                this.g = y84.f419u;
                break;
            case 2:
                super(context);
                this.f = "CopilotUsageDataFetcher";
                this.h = new vh0(context);
                this.i = new jf(context, 3);
                this.j = new wh0(context);
                this.g = y84.v;
                break;
            default:
                this.f = "ClaudeUsageDataFetcher";
                this.h = new p50(context);
                this.i = new jf(context, 1);
                this.j = new r50(context);
                this.g = y84.r;
                break;
        }
    }

    @Override // defpackage.n84
    public final n1 b() {
        switch (this.e) {
        }
        return (jf) this.i;
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
                return (p50) this.h;
            case 1:
                return (f70) this.h;
            default:
                return (vh0) this.h;
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
                return (r50) this.j;
            case 1:
                return (g70) this.j;
            default:
                return (wh0) this.j;
        }
    }
}
