package defpackage;

import android.webkit.ValueCallback;
import com.google.api.client.http.HttpStatusCodes;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v4 implements ValueCallback {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                String str = (String) obj;
                ra3 ra3Var = ez3.a;
                y84 y84Var = ((y3) obj2).a;
                if (str != null) {
                    zs3.X0(HttpStatusCodes.STATUS_CODE_OK, str);
                }
                y84Var.toString();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                break;
            default:
                a aVar = (a) obj2;
                String str2 = (String) obj;
                ra3 ra3Var2 = ez3.a;
                aVar.j();
                if (str2 != null) {
                    zs3.X0(50, str2);
                }
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                wr3 wr3Var = aVar.y;
                Boolean bool = Boolean.TRUE;
                wr3Var.getClass();
                wr3Var.i(null, bool);
                break;
        }
    }

    public /* synthetic */ v4(a aVar, int i) {
        this.b = aVar;
    }
}
