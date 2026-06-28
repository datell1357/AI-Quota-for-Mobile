package defpackage;

import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yv implements ph0, qh0 {
    public final /* synthetic */ int a;
    public final nh0 b;

    public yv(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.b = new py(null, 0);
                break;
            case 2:
                this.b = new py(null, 2);
                break;
            case 3:
                this.b = new k13((String[]) null, false);
                break;
            case 4:
                this.b = new m13(null, false);
                break;
            default:
                this.b = new xv(null, false);
                break;
        }
    }

    @Override // defpackage.ph0
    public final nh0 a(km1 km1Var) {
        switch (this.a) {
            case 0:
                if (km1Var == null) {
                    return new xv(null, false);
                }
                Collection collection = (Collection) km1Var.c("http.protocol.cookie-datepatterns");
                return new xv(collection != null ? (String[]) collection.toArray(new String[collection.size()]) : null, ((f1) km1Var).d("http.protocol.single-cookie-header", false));
            case 1:
                if (km1Var == null) {
                    return new py(null, 0);
                }
                Collection collection2 = (Collection) km1Var.c("http.protocol.cookie-datepatterns");
                return new py(collection2 != null ? (String[]) collection2.toArray(new String[collection2.size()]) : null, 0);
            case 2:
                if (km1Var == null) {
                    return new py(null, 2);
                }
                Collection collection3 = (Collection) km1Var.c("http.protocol.cookie-datepatterns");
                return new py(collection3 != null ? (String[]) collection3.toArray(new String[collection3.size()]) : null, 2);
            case 3:
                if (km1Var == null) {
                    return new k13((String[]) null, false);
                }
                Collection collection4 = (Collection) km1Var.c("http.protocol.cookie-datepatterns");
                return new k13(collection4 != null ? (String[]) collection4.toArray(new String[collection4.size()]) : null, ((f1) km1Var).d("http.protocol.single-cookie-header", false));
            default:
                if (km1Var == null) {
                    return new m13(null, false);
                }
                Collection collection5 = (Collection) km1Var.c("http.protocol.cookie-datepatterns");
                return new m13(collection5 != null ? (String[]) collection5.toArray(new String[collection5.size()]) : null, ((f1) km1Var).d("http.protocol.single-cookie-header", false));
        }
    }

    @Override // defpackage.qh0
    public final nh0 b(rl1 rl1Var) {
        switch (this.a) {
            case 0:
                return (xv) this.b;
            case 1:
                return (py) this.b;
            case 2:
                return (py) this.b;
            case 3:
                return (k13) this.b;
            default:
                return (m13) this.b;
        }
    }
}
