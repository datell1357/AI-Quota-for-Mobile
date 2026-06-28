package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gy3 {
    public static final n50 a;
    public static final n50 b;
    public static final is3 c;
    public static final y70 d;
    public static final y70 e;

    static {
        long jC = c75.c(4292441943L);
        long jC2 = c75.c(4291388482L);
        long jC3 = c75.c(4291388482L);
        long jC4 = c75.c(4292441943L);
        long jC5 = c75.c(4278190080L);
        long jC6 = c75.c(4282660978L);
        long jC7 = c75.c(4284237217L);
        long jC8 = c75.c(4288580844L);
        long jC9 = c75.c(4293651185L);
        long jC10 = c75.c(4279983282L);
        long jC11 = c75.c(4281171169L);
        long jC12 = c75.c(4281171169L);
        long jC13 = c75.c(4292076280L);
        long jC14 = c75.c(4294967295L);
        long jC15 = c75.c(4294638069L);
        long jC16 = c75.c(4294308845L);
        long jC17 = c75.c(4293979878L);
        long jC18 = c75.c(4293321948L);
        long jC19 = c75.c(4293321948L);
        long jB = c75.b(1713315357);
        long jB2 = c75.b(1293884957);
        long jB3 = c75.b(639573533);
        long jB4 = c75.b(639573533);
        long jC20 = c75.c(4287243300L);
        long jC21 = c75.c(4290065203L);
        long jC22 = c75.c(4290065203L);
        long jC23 = c75.c(4294110444L);
        long jC24 = c75.c(4294967295L);
        long jC25 = c75.c(4294506743L);
        long jC26 = c75.c(4294506743L);
        long jC27 = c75.c(4293321948L);
        long jC28 = c75.c(4292597955L);
        long jC29 = c75.c(4294967295L);
        long jC30 = c75.c(4294638069L);
        long jC31 = c75.c(4278213656L);
        long jC32 = c75.c(4279465513L);
        long jC33 = c75.c(4279465513L);
        long jC34 = c75.c(4293128666L);
        long jC35 = c75.c(4279505939L);
        long jC36 = c75.c(4279505939L);
        long jC37 = c75.c(4282203450L);
        long jC38 = c75.c(4282203450L);
        long jC39 = c75.c(4285756012L);
        a = new n50(jC, jC2, jC3, jC4, jC5, jC6, jC7, jC8, jC9, jC10, jC11, jC12, jC13, jC14, jC15, jC16, jC17, jC18, jC19, jB, jB2, jB3, jB4, jC20, jC21, jC22, jC23, jC24, jC25, jC26, jC27, jC28, jC29, jC30, jC31, jC32, jC33, jC34, jC35, jC36, jC37, jC38, jC39, c75.c(4285756012L), c75.c(4284302596L), c75.c(4287059208L), c75.c(4287059208L), c75.c(4294307038L));
        long jC40 = c75.c(4292441943L);
        long jC41 = c75.c(4290797631L);
        long jC42 = c75.c(4292441943L);
        long jC43 = c75.c(4292441943L);
        long jC44 = c75.c(4278190080L);
        long jC45 = c75.c(4289235189L);
        long jC46 = c75.c(4285816734L);
        long jC47 = c75.c(4284237217L);
        long jC48 = c75.c(4281148734L);
        long jC49 = c75.c(4285831641L);
        long jC50 = c75.c(4281171169L);
        long jC51 = c75.c(4281171169L);
        long jC52 = c75.c(4280038241L);
        long jC53 = c75.c(4281348142L);
        long jC54 = c75.c(4280690212L);
        long jC55 = c75.c(4280229405L);
        long jC56 = c75.c(4279505939L);
        long jC57 = c75.c(4278190080L);
        long jC58 = c75.c(4278190080L);
        long jB5 = c75.b(1725683907);
        long jB6 = c75.b(1306253507);
        long jB7 = c75.b(651942083);
        long jB8 = c75.b(651942083);
        long jC59 = c75.c(4294607233L);
        long jC60 = c75.c(4292432723L);
        long jC61 = c75.c(4292432723L);
        long jC62 = c75.c(4285015590L);
        long jC63 = c75.c(4294967295L);
        long jC64 = c75.c(4294506743L);
        long jC65 = c75.c(4294506743L);
        long jC66 = c75.c(4283255624L);
        long jC67 = c75.c(4282137658L);
        long jC68 = c75.c(4281348142L);
        long jC69 = c75.c(4280690212L);
        long jC70 = c75.c(4281711444L);
        long jC71 = c75.c(4279604019L);
        long jC72 = c75.c(4279604019L);
        long jC73 = c75.c(4278208267L);
        long jC74 = c75.c(4294638069L);
        long jC75 = c75.c(4294638069L);
        long jC76 = c75.c(4290953398L);
        long jC77 = c75.c(4290953398L);
        long jC78 = c75.c(4288453266L);
        b = new n50(jC40, jC41, jC42, jC43, jC44, jC45, jC46, jC47, jC48, jC49, jC50, jC51, jC52, jC53, jC54, jC55, jC56, jC57, jC58, jB5, jB6, jB7, jB8, jC59, jC60, jC61, jC62, jC63, jC64, jC65, jC66, jC67, jC68, jC69, jC70, jC71, jC72, jC73, jC74, jC75, jC76, jC77, jC78, c75.c(4288453266L), c75.c(4292519205L), c75.c(4289818630L), c75.c(4289818630L), c75.c(4283118338L));
        c = new is3(new jx3(2));
        long j = t70.b;
        d = a80.e(jC3, jC24, jC2, jC24, jC42, jC11, jC24, jC13, jC10, jC7, jC24, jC9, jC6, jC15, jC36, jC14, jC36, jC16, jC39, jC3, jC54, jC75, jC21, jC24, jC23, jC20, jB, jB3, j, jC14, jC16, jC17, jC18, jC15, jC14, jC17, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520);
        if ((4194304 & 0) != 0) {
            jC60 = u70.a;
        }
        long j2 = jC60;
        long j3 = (8388608 & 0) != 0 ? u70.c : jC63;
        if ((16777216 & 0) != 0) {
            jC62 = u70.b;
        }
        if ((33554432 & 0) != 0) {
            jC59 = u70.d;
        }
        if ((268435456 & 0) != 0) {
            j = u70.m;
        }
        e = new y70(jC42, jC63, jC41, jC63, jC3, jC50, jC63, jC52, jC49, jC46, jC63, jC48, jC45, jC54, jC75, jC53, jC75, jC55, jC78, jC42, jC15, jC36, j2, j3, jC62, jC59, jB5, jB7, j, jC53, jC56, jC55, jC54, jC53, jC56, jC57, (65520 & 16) != 0 ? u70.k : 0L, (65520 & 32) != 0 ? u70.l : 0L, (65520 & 64) != 0 ? u70.e : 0L, (65520 & 128) != 0 ? u70.f : 0L, (65520 & 256) != 0 ? u70.n : 0L, (65520 & 512) != 0 ? u70.o : 0L, (65520 & 1024) != 0 ? u70.g : 0L, (65520 & 2048) != 0 ? u70.h : 0L, (65520 & BlockstoreClient.MAX_SIZE) != 0 ? u70.p : 0L, (65520 & 8192) != 0 ? u70.q : 0L, (65520 & 16384) != 0 ? u70.i : 0L, (65520 & 32768) != 0 ? u70.j : 0L);
    }

    public static final void a(boolean z, ka0 ka0Var, ag1 ag1Var, int i) {
        ag1Var.X(-339279818);
        int i2 = i | 50;
        final boolean z2 = true;
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            ag1Var.S();
            if ((i & 1) != 0 && !ag1Var.x()) {
                ag1Var.Q();
                z2 = z;
            } else if ((((Configuration) ag1Var.j(ea.a)).uiMode & 48) != 32) {
                z2 = false;
            }
            ag1Var.q();
            Context context = (Context) ag1Var.j(ea.b);
            final y70 y70Var = z2 ? e : d;
            n50 n50Var = z2 ? b : a;
            int i3 = o44.a;
            context.getClass();
            ra1 ra1VarK = fl4.k(context, HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
            ra1 ra1VarK2 = fl4.k(context, 500);
            ra1 ra1VarK3 = fl4.k(context, 600);
            ra1 ra1VarL = fl4.l(context, HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
            ra1 ra1VarL2 = fl4.l(context, 500);
            ls3 ls3Var = g54.a;
            ay3 ay3Var = h54.a;
            ls3Var.getClass();
            e54 e54Var = new e54(ay3.a(ay3.a(ay3Var, p44.r, p44.t, p44.p, p44.s, p44.q, null, 16645977), on4.D(58), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.w, p44.y, p44.f255u, p44.x, p44.v, null, 16645977), on4.D(46), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.B, p44.D, p44.z, p44.C, p44.A, null, 16645977), on4.D(37), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.G, p44.I, p44.E, p44.H, p44.F, null, 16645977), on4.D(33), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.L, p44.N, p44.J, p44.M, p44.K, null, 16645977), on4.D(29), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.Q, p44.S, p44.O, p44.R, p44.P, null, 16645977), on4.D(25), null, ra1VarL, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.k0, p44.m0, p44.i0, p44.l0, p44.j0, null, 16645977), on4.D(23), null, ra1VarL2, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.p0, p44.r0, p44.n0, p44.q0, p44.o0, null, 16645977), on4.D(17), null, ra1VarL2, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.u0, p44.w0, p44.s0, p44.v0, p44.t0, null, 16645977), on4.D(15), null, ra1VarL2, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.c, p44.e, p44.a, p44.d, p44.b, null, 16645977), on4.D(17), null, ra1VarK, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.h, p44.j, p44.f, p44.i, p44.g, null, 16645977), on4.D(15), null, ra1VarK, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.m, p44.o, p44.k, p44.n, p44.l, null, 16645977), on4.D(13), null, ra1VarK, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.V, p44.X, p44.T, p44.W, p44.U, null, 16645977), on4.D(15), null, ra1VarK3, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.a0, p44.c0, p44.Y, p44.b0, p44.Z, null, 16645977), on4.D(13), null, ra1VarK2, on4.D(0), 0L, null, 16777053), ay3.a(ay3.a(ay3Var, p44.f0, p44.h0, p44.d0, p44.g0, p44.e0, null, 16645977), on4.D(12), null, ra1VarK2, on4.D(0), 0L, null, 16777053));
            final View view = (View) ag1Var.j(ea.f);
            if (view.isInEditMode()) {
                ag1Var.W(-1425907444);
                ag1Var.p(false);
            } else {
                ag1Var.W(-1426162109);
                boolean zH = ag1Var.h(view) | ag1Var.f(y70Var) | ag1Var.g(z2);
                Object objK = ag1Var.K();
                if (zH || objK == rb0.a) {
                    objK = new ne1() { // from class: fy3
                        @Override // defpackage.ne1
                        public final Object a() {
                            Context context2 = view.getContext();
                            context2.getClass();
                            Window window = ((Activity) context2).getWindow();
                            window.setStatusBarColor(c75.R(y70Var.n));
                            int i4 = Build.VERSION.SDK_INT;
                            (i4 >= 35 ? new oe4(window) : i4 >= 30 ? new ne4(window) : i4 >= 26 ? new me4(window) : new le4(window)).b(!z2);
                            return t64.a;
                        }
                    };
                    ag1Var.g0(objK);
                }
                zf5.g((ne1) objK, ag1Var);
                ag1Var.p(false);
            }
            gg4.a(c.a(n50Var), qj0.U(2128635126, new bt0(y70Var, e54Var, ka0Var, 8), ag1Var), ag1Var, 56);
        } else {
            ag1Var.Q();
            z2 = z;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ci2(z2, ka0Var, i, 2);
        }
    }
}
