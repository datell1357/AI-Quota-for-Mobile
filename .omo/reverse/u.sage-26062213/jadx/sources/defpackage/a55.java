package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a55 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ o55 e;

    public /* synthetic */ a55(o55 o55Var, String str, String str2, String str3, int i) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = o55Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        String str = this.d;
        String str2 = this.c;
        String str3 = this.b;
        o55 o55Var = this.e;
        switch (i) {
            case 0:
                o55Var.c.V();
                at4 at4Var = o55Var.c.c;
                pb5.T(at4Var);
                return at4Var.t0(str3, str2, str);
            case 1:
                o55Var.c.V();
                at4 at4Var2 = o55Var.c.c;
                pb5.T(at4Var2);
                return at4Var2.t0(str3, str2, str);
            case 2:
                o55Var.c.V();
                at4 at4Var3 = o55Var.c.c;
                pb5.T(at4Var3);
                return at4Var3.x0(str3, str2, str);
            default:
                o55Var.c.V();
                at4 at4Var4 = o55Var.c.c;
                pb5.T(at4Var4);
                return at4Var4.x0(str3, str2, str);
        }
    }
}
