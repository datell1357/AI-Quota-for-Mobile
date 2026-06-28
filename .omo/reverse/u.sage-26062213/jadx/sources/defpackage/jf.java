package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jf extends n1 {
    public final /* synthetic */ int d;
    public final lm0 e;
    public final String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jf(Context context, int i) {
        super(context);
        this.d = i;
        context.getClass();
        switch (i) {
            case 1:
                super(context);
                this.e = v3.b.a(context, v3.a[0]);
                this.f = "CLAUDE_FREE";
                break;
            case 2:
                super(context);
                this.e = v3.f.a(context, v3.a[4]);
                this.f = "CODEX_FREE";
                break;
            case 3:
                super(context);
                this.e = v3.c.a(context, v3.a[1]);
                this.f = "COPILOT_FREE";
                break;
            case 4:
                super(context);
                this.e = v3.e.a(context, v3.a[3]);
                this.f = "GEMINI_FREE";
                break;
            default:
                this.e = v3.d.a(context, v3.a[2]);
                this.f = "ANTIGRAVITY_FREE";
                break;
        }
    }

    @Override // defpackage.n1
    public final lm0 c() {
        switch (this.d) {
        }
        return this.e;
    }

    @Override // defpackage.n1
    public final String d() {
        switch (this.d) {
        }
        return this.f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00bf A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0102 A[RETURN, SYNTHETIC] */
    @Override // defpackage.n1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String f(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jf.f(java.lang.String):java.lang.String");
    }
}
