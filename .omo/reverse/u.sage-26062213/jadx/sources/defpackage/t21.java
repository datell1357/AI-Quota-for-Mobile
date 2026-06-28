package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t21 implements j41 {
    public final /* synthetic */ int a;
    public final m03 b;

    public /* synthetic */ t21(m03 m03Var, int i) {
        this.a = i;
        this.b = m03Var;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        m03 m03Var = this.b;
        switch (i) {
            case 0:
                String packageName = ((Context) m03Var.get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                q73.r("Cannot return null from a non-@Nullable @Provides method");
                return null;
            default:
                return new de3((Context) m03Var.get(), Integer.valueOf(de3.q).intValue(), "com.google.android.datatransport.events");
        }
    }
}
