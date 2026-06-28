package defpackage;

import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e4 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pg2 o;

    public /* synthetic */ e4(pg2 pg2Var, int i) {
        this.n = i;
        this.o = pg2Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        pg2 pg2Var = this.o;
        switch (i) {
            case 0:
                pg2Var.setValue((WebView) obj);
                break;
            case 1:
                pg2Var.setValue((x72) obj);
                break;
            case 2:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                pg2Var.setValue(bool);
                break;
            default:
                y84 y84Var = (y84) obj;
                y84Var.getClass();
                pg2Var.setValue(y84Var);
                break;
        }
        return t64Var;
    }
}
