package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class kc0 {
    public static final is3 a = new is3(da.C);
    public static final is3 b = new is3(da.D);
    public static final is3 c = new is3(da.F);
    public static final is3 d = new is3(da.E);
    public static final is3 e = new is3(da.H);
    public static final is3 f = new is3(da.G);
    public static final is3 g = new is3(da.N);
    public static final is3 h = new is3(da.J);
    public static final is3 i = new is3(da.K);
    public static final is3 j = new is3(da.M);
    public static final is3 k = new is3(da.L);
    public static final is3 l = new is3(da.O);
    public static final is3 m = new is3(da.P);
    public static final is3 n = new is3(da.Q);
    public static final is3 o = new is3(da.S);
    public static final is3 p;
    public static final is3 q;
    public static final is3 r;
    public static final is3 s;
    public static final is3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final is3 f164u;
    public static final is3 v;
    public static final is3 w;
    public static final lc0 x;

    static {
        dm0.D(new l6(9));
        p = new is3(ic0.s);
        q = new is3(ic0.q);
        r = new is3(ic0.t);
        s = new is3(ic0.f135u);
        t = new is3(ic0.v);
        f164u = new is3(ic0.w);
        v = new is3(ic0.r);
        w = new is3(da.R);
        x = new lc0(ic0.p);
        dm0.D(da.I);
    }

    public static final void a(sr2 sr2Var, qv3 qv3Var, df1 df1Var, ag1 ag1Var, int i2) {
        int i3;
        ag1Var.X(1925803616);
        int i4 = i2 | (ag1Var.f(sr2Var) ? 4 : 2) | (ag1Var.f(qv3Var) ? 32 : 16) | (ag1Var.h(df1Var) ? 256 : 128);
        if (ag1Var.N(i4 & 1, (i4 & 147) != 146)) {
            q9 q9Var = (q9) sr2Var;
            j03 j03VarA = a.a(q9Var.getAccessibilityManager());
            j03 j03VarA2 = b.a(q9Var.getAutofill());
            j03 j03VarA3 = d.a(q9Var.getAutofillManager());
            j03 j03VarA4 = c.a(q9Var.getAutofillTree());
            j03 j03VarA5 = e.a(q9Var.getClipboardManager());
            j03 j03VarA6 = f.a(q9Var.getClipboard());
            j03 j03VarA7 = h.a(q9Var.getDensity());
            j03 j03VarA8 = i.a(q9Var.getFocusOwner());
            j03 j03VarA9 = j.a(q9Var.getFontLoader());
            j03VarA9.g = false;
            j03 j03VarA10 = k.a(q9Var.getFontFamilyResolver());
            j03VarA10.g = false;
            j03 j03VarA11 = l.a(q9Var.getHapticFeedBack());
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z || objK == bx3Var) {
                objK = new m9(q9Var, 2);
                ag1Var.g0(objK);
            }
            j03 j03VarC = m.c((pe1) objK);
            j03 j03VarA12 = n.a(q9Var.getLayoutDirection());
            boolean z2 = i5 == 4;
            Object objK2 = ag1Var.K();
            boolean z3 = z2;
            int i6 = 3;
            if (z3 || objK2 == bx3Var) {
                objK2 = new m9(q9Var, i6);
                ag1Var.g0(objK2);
            }
            j03 j03VarC2 = p.c((pe1) objK2);
            boolean z4 = i5 == 4;
            Object objK3 = ag1Var.K();
            if (z4 || objK3 == bx3Var) {
                i3 = 4;
                objK3 = new m9(q9Var, i3);
                ag1Var.g0(objK3);
            } else {
                i3 = 4;
            }
            j03 j03VarC3 = q.c((pe1) objK3);
            boolean z5 = i5 == i3;
            Object objK4 = ag1Var.K();
            if (z5 || objK4 == bx3Var) {
                objK4 = new m9(q9Var, 5);
                ag1Var.g0(objK4);
            }
            j03 j03VarC4 = r.c((pe1) objK4);
            j03 j03VarA13 = s.a(qv3Var);
            j03 j03VarA14 = t.a(q9Var.getViewConfiguration());
            j03 j03VarA15 = f164u.a(q9Var.getWindowInfo());
            boolean z6 = i5 == 4;
            Object objK5 = ag1Var.K();
            if (z6 || objK5 == bx3Var) {
                objK5 = new m9(q9Var, 6);
                ag1Var.g0(objK5);
            }
            gg4.b(new j03[]{j03VarA, j03VarA2, j03VarA3, j03VarA4, j03VarA5, j03VarA6, j03VarA7, j03VarA8, j03VarA9, j03VarA10, j03VarA11, j03VarC, j03VarA12, j03VarC2, j03VarC3, j03VarC4, j03VarA13, j03VarA14, j03VarA15, w.c((pe1) objK5), g.a(q9Var.getGraphicsContext()), a72.a.a(q9Var.getRetainedValuesStore()), o.a(q9Var.getLocaleList())}, df1Var, ag1Var, ((i4 >> 3) & 112) | 8);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ma(sr2Var, qv3Var, df1Var, i2, 1);
        }
    }

    public static final void b(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
