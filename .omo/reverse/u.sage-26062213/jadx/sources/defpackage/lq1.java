package defpackage;

import android.content.Context;
import android.view.GestureDetector;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lq1 {
    public boolean a;
    public int b;
    public final Object c;
    public final Object d;

    public lq1(Context context, m9 m9Var) {
        this.c = m9Var;
        this.b = 0;
        this.d = new GestureDetector(context, new kq1(this));
    }

    public static lq1 a(char c) {
        return new lq1(new r6(16, new g40(c)), false, h40.G, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public lq1(r6 r6Var, boolean z, se0 se0Var, int i) {
        this.d = r6Var;
        this.a = z;
        this.c = se0Var;
        this.b = i;
    }
}
