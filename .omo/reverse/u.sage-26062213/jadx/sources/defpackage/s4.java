package defpackage;

import android.webkit.WebView;
import com.google.android.gms.common.internal.ImagesContract;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s4 extends bv3 implements df1 {
    public final /* synthetic */ pg2 A;
    public final /* synthetic */ pg2 B;
    public String r;
    public int s;
    public final /* synthetic */ boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ y3 f307u;
    public final /* synthetic */ io3 v;
    public final /* synthetic */ qi0 w;
    public final /* synthetic */ pg2 x;
    public final /* synthetic */ pg2 y;
    public final /* synthetic */ pg2 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s4(boolean z, y3 y3Var, io3 io3Var, qi0 qi0Var, pg2 pg2Var, pg2 pg2Var2, pg2 pg2Var3, pg2 pg2Var4, pg2 pg2Var5, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = z;
        this.f307u = y3Var;
        this.v = io3Var;
        this.w = qi0Var;
        this.x = pg2Var;
        this.y = pg2Var2;
        this.z = pg2Var3;
        this.A = pg2Var4;
        this.B = pg2Var5;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((s4) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new s4(this.t, this.f307u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, dh0Var);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        String str;
        int i = this.s;
        t64 t64Var = t64.a;
        pg2 pg2Var = this.B;
        pg2 pg2Var2 = this.y;
        int i2 = 1;
        dh0 dh0Var = null;
        try {
            if (i == 0) {
                gg4.T(obj);
                pg2 pg2Var3 = this.x;
                x72 x72Var = (x72) pg2Var3.getValue();
                if (x72Var != null) {
                    String str2 = x72Var.a;
                    int iHashCode = str2.hashCode();
                    pg2 pg2Var4 = this.A;
                    if (iHashCode != -1867169789) {
                        io3 io3Var = this.v;
                        ri0 ri0Var = ri0.n;
                        if (iHashCode != 96784904) {
                            if (iHashCode == 855018661 && str2.equals("validation_required")) {
                                JSONObject jSONObject = new JSONObject(x72Var.b);
                                String string = jSONObject.getString(ImagesContract.URL);
                                String string2 = jSONObject.getJSONObject("account").toString();
                                string2.getClass();
                                WebView webView = (WebView) pg2Var.getValue();
                                if (webView != null) {
                                    webView.loadUrl(string);
                                }
                                this.r = string2;
                                this.s = 2;
                                if (io3.b(io3Var, "Account verification required.", this) == ri0Var) {
                                    return ri0Var;
                                }
                                str = string2;
                            }
                        } else if (str2.equals("error")) {
                            tu1 tu1Var = (tu1) pg2Var2.getValue();
                            if (tu1Var != null) {
                                tu1Var.j(null);
                            }
                            pg2Var4.setValue(Boolean.FALSE);
                            pg2Var3.setValue(null);
                            WebView webView2 = (WebView) pg2Var.getValue();
                            if (webView2 != null) {
                                webView2.loadUrl(this.f307u.c);
                            }
                            this.s = 1;
                            if (io3.b(io3Var, "Login Failed. Please try again.", this) == ri0Var) {
                                return ri0Var;
                            }
                        }
                    } else if (str2.equals("success")) {
                        tu1 tu1Var2 = (tu1) pg2Var2.getValue();
                        if (tu1Var2 != null) {
                            tu1Var2.j(null);
                        }
                        if (this.t && ((Boolean) this.z.getValue()).booleanValue()) {
                            pg2Var4.setValue(Boolean.TRUE);
                            return t64Var;
                        }
                        pg2Var4.setValue(Boolean.FALSE);
                        pg2Var3.setValue(null);
                        return t64Var;
                    }
                }
                return t64Var;
            }
            if (i == 1) {
                gg4.T(obj);
                return t64Var;
            }
            if (i != 2) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = this.r;
            gg4.T(obj);
            tu1 tu1Var3 = (tu1) pg2Var2.getValue();
            if (tu1Var3 != null) {
                tu1Var3.j(null);
            }
            pg2Var2.setValue(ca.y(this.w, null, null, new p(str, pg2Var, dh0Var, i2), 3));
            return t64Var;
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            return t64Var;
        }
    }
}
