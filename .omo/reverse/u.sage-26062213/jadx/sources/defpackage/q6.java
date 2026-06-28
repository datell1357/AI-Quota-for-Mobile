package defpackage;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.ApiException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q6 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ q6(String str, qi0 qi0Var, n1 n1Var, df1 df1Var, gf1 gf1Var, pe1 pe1Var) {
        this.n = 4;
        this.o = qi0Var;
        this.p = n1Var;
        this.q = df1Var;
        this.r = gf1Var;
        this.s = pe1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        List listSubList;
        w3 w3Var;
        int i = this.n;
        dh0 dh0Var = null;
        t64 t64Var = t64.a;
        int i2 = 3;
        Object obj2 = this.s;
        Object obj3 = this.r;
        Object obj4 = this.q;
        Object obj5 = this.p;
        Object obj6 = this.o;
        switch (i) {
            case 0:
                j6 j6Var = (j6) obj6;
                j6Var.a = ((p6) obj5).c((String) obj4, (h6) obj3, new r6(0, (pg2) obj2));
                break;
            case 1:
                me2 me2Var = (me2) obj6;
                w33 w33Var = (w33) obj5;
                t33 t33Var = (t33) obj4;
                dg3 dg3Var = (dg3) obj3;
                s33 s33Var = (s33) obj2;
                float fFloatValue = ((Float) obj).floatValue();
                ie2 ie2VarG = me2.g(me2Var.g);
                if (ie2VarG != null) {
                    gw4 gw4Var = me2Var.e;
                    long j = ie2VarG.b;
                    long j2 = ie2VarG.a;
                    ((ta4) gw4Var.o).a(Float.intBitsToFloat((int) (j2 >> 32)), j);
                    ((ta4) gw4Var.p).a(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
                    ie2 ie2VarA = ((ie2) w33Var.n).a(ie2VarG);
                    w33Var.n = ie2VarA;
                    t33Var.n = dg3Var.j(dg3Var.f(ie2VarA.a));
                    s33Var.n = !w80.e(r0 - fFloatValue);
                }
                break;
            case 2:
                ArrayList arrayList = (ArrayList) obj5;
                u33 u33Var = (u33) obj4;
                ii2 ii2Var = (ii2) obj3;
                Bundle bundle = (Bundle) obj2;
                yh2 yh2Var = (yh2) obj;
                yh2Var.getClass();
                ((s33) obj6).n = true;
                int iIndexOf = arrayList.indexOf(yh2Var);
                if (iIndexOf != -1) {
                    int i3 = iIndexOf + 1;
                    listSubList = arrayList.subList(u33Var.n, i3);
                    u33Var.n = i3;
                } else {
                    listSubList = g01.n;
                }
                ii2Var.a(yh2Var.o, bundle, yh2Var, listSubList);
                break;
            case 3:
                qi0 qi0Var = (qi0) obj6;
                wh1 wh1Var = (wh1) obj5;
                m10 m10Var = (m10) obj4;
                n8 n8Var = (n8) obj3;
                y84 y84Var = (y84) obj2;
                e6 e6Var = (e6) obj;
                e6Var.getClass();
                ez3.a.getClass();
                ra3.c(new Object[0]);
                ra3.c(new Object[0]);
                Intent intent = e6Var.o;
                if (intent == null) {
                    ra3.m(new Object[0]);
                    GoogleSignInAccount googleSignInAccountG = wh1Var.g();
                    if (googleSignInAccountG != null) {
                        googleSignInAccountG.getEmail();
                    }
                    ra3.c(new Object[0]);
                    if (googleSignInAccountG != null) {
                        ca.y(qi0Var, null, null, new d93(m10Var, googleSignInAccountG, dh0Var, i2), 3);
                    }
                } else {
                    try {
                        ow3 signedInAccountFromIntent = GoogleSignIn.getSignedInAccountFromIntent(intent);
                        signedInAccountFromIntent.getClass();
                        signedInAccountFromIntent.i();
                        signedInAccountFromIntent.j();
                        ra3.c(new Object[0]);
                        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) signedInAccountFromIntent.h();
                        googleSignInAccount.getEmail();
                        googleSignInAccount.getDisplayName();
                        Objects.toString(googleSignInAccount.getGrantedScopes());
                        ra3.c(new Object[0]);
                        ca.y(qi0Var, null, null, new qd(m10Var, googleSignInAccount, n8Var, y84Var, null, 10), 3);
                    } catch (ApiException e) {
                        ra3 ra3Var = ez3.a;
                        e.getStatusCode();
                        e.getMessage();
                        ra3Var.getClass();
                        ra3.f(new Object[0]);
                        ra3.g(new Object[0]);
                    } catch (Exception unused) {
                        ez3.a.getClass();
                        ra3.g(new Object[0]);
                    }
                }
                break;
            default:
                qi0 qi0Var2 = (qi0) obj6;
                n1 n1Var = (n1) obj5;
                df1 df1Var = (df1) obj4;
                gf1 gf1Var = (gf1) obj3;
                pe1 pe1Var = (pe1) obj2;
                String str = (String) obj;
                str.getClass();
                ez3.a.getClass();
                ra3.c(new Object[0]);
                try {
                    w3Var = (w3) xc4.a.a(str, w3.class);
                } catch (Exception unused2) {
                    ez3.a.getClass();
                    ra3.g(new Object[0]);
                    w3Var = null;
                }
                if (w3Var != null) {
                    ca.y(qi0Var2, null, null, new uc4(w3Var, n1Var, df1Var, gf1Var, pe1Var, null), 3);
                }
                break;
        }
        return t64Var;
        return t64Var;
    }

    public /* synthetic */ q6(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
        this.s = obj5;
    }
}
