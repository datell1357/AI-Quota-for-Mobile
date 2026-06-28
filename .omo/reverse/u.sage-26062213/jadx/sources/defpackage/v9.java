package defpackage;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v9 extends r2 implements View.OnAttachStateChangeListener, AccessibilityManager.AccessibilityStateChangeListener, AccessibilityManager.TouchExplorationStateChangeListener, Runnable {
    public static final sf2 c0;
    public j3 A;
    public boolean B;
    public final tf2 C;
    public final tf2 D;
    public final mq3 E;
    public final mq3 F;
    public int G;
    public Integer H;
    public final fi I;
    public boolean J;
    public long K;
    public boolean L;
    public s9 M;
    public tf2 N;
    public final uf2 O;
    public final rf2 P;
    public final rf2 Q;
    public final String R;
    public final String S;
    public final ui3 T;
    public final tf2 U;
    public hh3 V;
    public boolean W;
    public final rf2 X;
    public final uf2 Y;
    public final y Z;
    public final ArrayList a0;
    public final u9 b0;
    public final q9 q;
    public int r = Integer.MIN_VALUE;
    public final u9 s = new u9(this, 0);
    public final AccessibilityManager t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f374u;
    public List v;
    public final r9 w;
    public int x;
    public int y;
    public j3 z;

    static {
        int[] iArr = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        sf2 sf2Var = fs1.a;
        sf2 sf2Var2 = new sf2(32);
        int i = sf2Var2.b;
        if (i < 0) {
            mk0.h("");
            return;
        }
        int i2 = i + 32;
        sf2Var2.b(i2);
        int[] iArr2 = sf2Var2.a;
        int i3 = sf2Var2.b;
        if (i != i3) {
            ji.N(i2, i, i3, iArr2, iArr2);
        }
        ji.Q(i, 0, 12, iArr, iArr2);
        sf2Var2.b += 32;
        c0 = sf2Var2;
    }

    public v9(q9 q9Var) {
        this.q = q9Var;
        Object systemService = q9Var.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.t = (AccessibilityManager) systemService;
        this.f374u = 100L;
        new Handler(Looper.getMainLooper());
        this.w = new r9(this);
        this.x = Integer.MIN_VALUE;
        this.y = Integer.MIN_VALUE;
        this.C = new tf2();
        this.D = new tf2();
        this.E = new mq3(0);
        this.F = new mq3(0);
        this.G = -1;
        this.I = new fi(0);
        int i = 1;
        this.L = true;
        tf2 tf2Var = is1.a;
        tf2Var.getClass();
        this.N = tf2Var;
        this.O = new uf2();
        this.P = new rf2();
        this.Q = new rf2();
        this.R = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.S = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.T = new ui3(4);
        this.U = new tf2();
        this.V = new hh3(q9Var.getSemanticsOwner().a(), tf2Var);
        int i2 = cs1.a;
        this.X = new rf2();
        this.Y = new uf2();
        q9Var.addOnAttachStateChangeListener(this);
        this.Z = new y(i, this);
        this.a0 = new ArrayList();
        this.b0 = new u9(this, i);
    }

    public static Rect F(fl4 fl4Var, float f, float f2) {
        if (!(fl4Var instanceof lr2) && !(fl4Var instanceof mr2)) {
            return null;
        }
        l33 l33VarO = fl4Var.o();
        return new Rect((int) (l33VarO.a + f), (int) (l33VarO.b + f2), (int) (l33VarO.c + f), (int) (l33VarO.d + f2));
    }

    public static float[] H(fl4 fl4Var) {
        if (!(fl4Var instanceof mr2)) {
            return null;
        }
        ka3 ka3Var = ((mr2) fl4Var).x;
        long j = ka3Var.h;
        long j2 = ka3Var.g;
        long j3 = ka3Var.f;
        long j4 = ka3Var.e;
        return new float[]{Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L))};
    }

    public static Region I(fl4 fl4Var, float f, float f2) {
        if (fl4Var instanceof kr2) {
            kr2 kr2Var = (kr2) fl4Var;
            l33 l33VarD = kr2Var.o().d(f, f2);
            Region region = new Region(new Rect((int) (l33VarD.a + 0.0f), (int) (l33VarD.b + 0.0f), (int) (l33VarD.c + 0.0f), (int) (l33VarD.d + 0.0f)));
            Region region2 = new Region();
            sb sbVar = kr2Var.x;
            if (sbVar instanceof sb) {
                Path path = sbVar.a;
                path.offset(f, f2);
                region2.setPath(path, region);
                return region2;
            }
            p61.s("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    public static CharSequence J(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            int i = 100000;
            if (charSequence.length() > 100000) {
                if (Character.isHighSurrogate(charSequence.charAt(99999)) && Character.isLowSurrogate(charSequence.charAt(100000))) {
                    i = 99999;
                }
                CharSequence charSequenceSubSequence = charSequence.subSequence(0, i);
                charSequenceSubSequence.getClass();
                return charSequenceSubSequence;
            }
        }
        return charSequence;
    }

    public static String n(gh3 gh3Var) {
        ff ffVar;
        if (gh3Var != null) {
            bh3 bh3Var = gh3Var.d;
            kg2 kg2Var = bh3Var.n;
            oh3 oh3Var = lh3.a;
            if (kg2Var.c(oh3Var)) {
                return n42.a((List) bh3Var.e(oh3Var), ",", null, 62);
            }
            oh3 oh3Var2 = lh3.F;
            if (kg2Var.c(oh3Var2)) {
                Object objG = kg2Var.g(oh3Var2);
                if (objG == null) {
                    objG = null;
                }
                ff ffVar2 = (ff) objG;
                if (ffVar2 != null) {
                    return ffVar2.o;
                }
            } else {
                Object objG2 = kg2Var.g(lh3.B);
                if (objG2 == null) {
                    objG2 = null;
                }
                List list = (List) objG2;
                if (list != null && (ffVar = (ff) o70.i0(list)) != null) {
                    return ffVar.o;
                }
            }
        }
        return null;
    }

    public static final boolean r(ye3 ye3Var, float f) {
        ne1 ne1Var = ye3Var.a;
        if (f >= 0.0f || ((Number) ne1Var.a()).floatValue() <= 0.0f) {
            return f > 0.0f && ((Number) ne1Var.a()).floatValue() < ((Number) ye3Var.b.a()).floatValue();
        }
        return true;
    }

    public static final boolean s(ye3 ye3Var) {
        ne1 ne1Var = ye3Var.a;
        if (((Number) ne1Var.a()).floatValue() > 0.0f) {
            return true;
        }
        ((Number) ne1Var.a()).floatValue();
        ((Number) ye3Var.b.a()).floatValue();
        return false;
    }

    public static final boolean t(ye3 ye3Var) {
        ne1 ne1Var = ye3Var.a;
        if (((Number) ne1Var.a()).floatValue() < ((Number) ye3Var.b.a()).floatValue()) {
            return true;
        }
        ((Number) ne1Var.a()).floatValue();
        return false;
    }

    public static /* synthetic */ void y(v9 v9Var, int i, int i2, Integer num, int i3) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        v9Var.x(i, i2, num, null);
    }

    public final void A(int i) {
        s9 s9Var = this.M;
        if (s9Var != null) {
            gh3 gh3Var = (gh3) s9Var.f;
            if (i != gh3Var.f) {
                return;
            }
            if (SystemClock.uptimeMillis() - s9Var.e <= 1000) {
                AccessibilityEvent accessibilityEventI = i(u(gh3Var.f), 131072);
                accessibilityEventI.setFromIndex(s9Var.c);
                accessibilityEventI.setToIndex(s9Var.d);
                accessibilityEventI.setAction(s9Var.a);
                accessibilityEventI.setMovementGranularity(s9Var.b);
                accessibilityEventI.getText().add(n(gh3Var));
                w(accessibilityEventI);
            }
        }
        this.M = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:212:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(defpackage.hs1 r57) {
        /*
            Method dump skipped, instruction units count: 1646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.B(hs1):void");
    }

    public final void C(xy1 xy1Var, uf2 uf2Var) {
        bh3 bh3VarX;
        HashMap<xy1, bd> layoutNodeToHolder;
        if (xy1Var.H()) {
            id androidViewsHandler = this.q.getAndroidViewsHandler();
            if (androidViewsHandler == null || (layoutNodeToHolder = androidViewsHandler.getLayoutNodeToHolder()) == null || !layoutNodeToHolder.containsKey(xy1Var)) {
                xy1 xy1Var2 = null;
                if (!xy1Var.S.f(8)) {
                    xy1Var = xy1Var.u();
                    while (true) {
                        if (xy1Var == null) {
                            xy1Var = null;
                            break;
                        } else if (xy1Var.S.f(8)) {
                            break;
                        } else {
                            xy1Var = xy1Var.u();
                        }
                    }
                }
                if (xy1Var == null || (bh3VarX = xy1Var.x()) == null) {
                    return;
                }
                if (!bh3VarX.p) {
                    xy1 xy1VarU = xy1Var.u();
                    while (true) {
                        if (xy1VarU != null) {
                            bh3 bh3VarX2 = xy1VarU.x();
                            if (bh3VarX2 != null && bh3VarX2.p) {
                                xy1Var2 = xy1VarU;
                                break;
                            }
                            xy1VarU = xy1VarU.u();
                        } else {
                            break;
                        }
                    }
                    if (xy1Var2 != null) {
                        xy1Var = xy1Var2;
                    }
                }
                int i = xy1Var.o;
                if (uf2Var.a(i)) {
                    y(this, u(i), 2048, 1, 8);
                }
            }
        }
    }

    public final void D(xy1 xy1Var) {
        HashMap<xy1, bd> layoutNodeToHolder;
        if (xy1Var.H()) {
            id androidViewsHandler = this.q.getAndroidViewsHandler();
            if (androidViewsHandler == null || (layoutNodeToHolder = androidViewsHandler.getLayoutNodeToHolder()) == null || !layoutNodeToHolder.containsKey(xy1Var)) {
                int i = xy1Var.o;
                ye3 ye3Var = (ye3) this.C.b(i);
                ye3 ye3Var2 = (ye3) this.D.b(i);
                if (ye3Var == null && ye3Var2 == null) {
                    return;
                }
                AccessibilityEvent accessibilityEventI = i(i, BlockstoreClient.MAX_SIZE);
                if (ye3Var != null) {
                    accessibilityEventI.setScrollX((int) ((Number) ye3Var.a.a()).floatValue());
                    accessibilityEventI.setMaxScrollX((int) ((Number) ye3Var.b.a()).floatValue());
                }
                if (ye3Var2 != null) {
                    accessibilityEventI.setScrollY((int) ((Number) ye3Var2.a.a()).floatValue());
                    accessibilityEventI.setMaxScrollY((int) ((Number) ye3Var2.b.a()).floatValue());
                }
                w(accessibilityEventI);
            }
        }
    }

    public final boolean E(gh3 gh3Var, int i, int i2, boolean z) {
        String strN;
        bh3 bh3Var = gh3Var.d;
        int i3 = gh3Var.f;
        oh3 oh3Var = ah3.j;
        if (bh3Var.n.c(oh3Var) && mt1.h(gh3Var)) {
            ff1 ff1Var = (ff1) ((o2) gh3Var.d.e(oh3Var)).b;
            if (ff1Var != null) {
                return ((Boolean) ff1Var.d(Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
            }
        } else if ((i != i2 || i2 != this.G) && (strN = n(gh3Var)) != null) {
            if (i < 0 || i != i2 || i2 > strN.length()) {
                i = -1;
            }
            this.G = i;
            boolean z2 = strN.length() > 0;
            w(j(u(i3), z2 ? Integer.valueOf(this.G) : null, z2 ? Integer.valueOf(this.G) : null, z2 ? Integer.valueOf(strN.length()) : null, strN));
            A(i3);
            return true;
        }
        return false;
    }

    public final Rect G(float f, float f2, float f3, float f4) {
        long jFloatToRawIntBits = Float.floatToRawIntBits(f);
        long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(f2)) & 4294967295L;
        q9 q9Var = this.q;
        long jP = q9Var.p(jFloatToRawIntBits2 | (jFloatToRawIntBits << 32));
        long jP2 = q9Var.p((((long) Float.floatToRawIntBits(f4)) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
        int i = (int) (jP >> 32);
        int i2 = (int) (jP2 >> 32);
        int i3 = (int) (jP & 4294967295L);
        int i4 = (int) (jP2 & 4294967295L);
        return new Rect((int) Math.floor(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.floor(Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x013f, code lost:
    
        r28 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0149, code lost:
    
        if (((r7 & ((~r7) << 6)) & r20) == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014b, code lost:
    
        r25 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K() {
        /*
            Method dump skipped, instruction units count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.K():void");
    }

    @Override // defpackage.r2
    public final wu4 a(View view) {
        return this.w;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(int r24, defpackage.j3 r25, java.lang.String r26, android.os.Bundle r27) {
        /*
            Method dump skipped, instruction units count: 1098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.e(int, j3, java.lang.String, android.os.Bundle):void");
    }

    public final Rect f(ih3 ih3Var) {
        ns1 ns1Var = ih3Var.b;
        return G(ns1Var.a, ns1Var.b, ns1Var.c, ns1Var.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(boolean r22, int r23, long r24) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.g(boolean, int, long):boolean");
    }

    public final void h() {
        Trace.beginSection("sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (p()) {
                v(this.q.getSemanticsOwner().a(), this.V);
            }
            Trace.endSection();
            Trace.beginSection("sendSemanticsPropertyChangeEvents");
            try {
                B(m());
                Trace.endSection();
                Trace.beginSection("updateSemanticsNodesCopyAndPanes");
                try {
                    K();
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final AccessibilityEvent i(int i, int i2) {
        ih3 ih3Var;
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName("android.view.View");
        q9 q9Var = this.q;
        accessibilityEventObtain.setPackageName(q9Var.getContext().getPackageName());
        accessibilityEventObtain.setSource(q9Var, i);
        if (p() && (ih3Var = (ih3) m().b(i)) != null) {
            gh3 gh3Var = ih3Var.a;
            accessibilityEventObtain.setPassword(gh3Var.d.n.c(lh3.J));
            Object objG = gh3Var.d.n.g(lh3.o);
            if (objG == null) {
                objG = null;
            }
            boolean zG = nt1.g(objG, Boolean.TRUE);
            if (Build.VERSION.SDK_INT >= 34) {
                s2.i(accessibilityEventObtain, zG);
            }
        }
        return accessibilityEventObtain;
    }

    public final AccessibilityEvent j(int i, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent accessibilityEventI = i(i, 8192);
        if (num != null) {
            accessibilityEventI.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            accessibilityEventI.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            accessibilityEventI.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            accessibilityEventI.getText().add(charSequence);
        }
        return accessibilityEventI;
    }

    public final int k(gh3 gh3Var) {
        bh3 bh3Var = gh3Var.d;
        if (!bh3Var.n.c(lh3.a)) {
            oh3 oh3Var = lh3.G;
            if (bh3Var.n.c(oh3Var)) {
                return (int) (((tx3) bh3Var.e(oh3Var)).a & 4294967295L);
            }
        }
        return this.G;
    }

    public final int l(gh3 gh3Var) {
        bh3 bh3Var = gh3Var.d;
        if (!bh3Var.n.c(lh3.a)) {
            oh3 oh3Var = lh3.G;
            if (bh3Var.n.c(oh3Var)) {
                return (int) (((tx3) bh3Var.e(oh3Var)).a >> 32);
            }
        }
        return this.G;
    }

    public final hs1 m() {
        if (this.L) {
            this.L = false;
            q9 q9Var = this.q;
            this.N = se0.m(q9Var.getSemanticsOwner(), l9.q);
            if (p()) {
                tf2 tf2Var = this.N;
                Resources resources = q9Var.getContext().getResources();
                rf2 rf2Var = this.P;
                rf2Var.a();
                rf2 rf2Var2 = this.Q;
                rf2Var2.a();
                ih3 ih3Var = (ih3) tf2Var.b(-1);
                gh3 gh3Var = ih3Var != null ? ih3Var.a : null;
                gh3Var.getClass();
                ArrayList arrayListB = rh3.b(gh3Var, new c8(3, tf2Var), new c8(4, resources), tv4.E(gh3Var));
                int i = 1;
                int size = arrayListB.size() - 1;
                if (1 <= size) {
                    while (true) {
                        int i2 = ((gh3) arrayListB.get(i - 1)).f;
                        int i3 = ((gh3) arrayListB.get(i)).f;
                        rf2Var.f(i2, i3);
                        rf2Var2.f(i3, i2);
                        if (i == size) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return this.N;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0075 A[LOOP:0: B:4:0x0016->B:36:0x0075, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0078 A[EDGE_INSN: B:47:0x0078->B:37:0x0078 BREAK  A[LOOP:0: B:4:0x0016->B:36:0x0075], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.l33 o(defpackage.gh3 r10, android.graphics.Rect r11, defpackage.jl3 r12) {
        /*
            r9 = this;
            t9 r0 = new t9
            r0.<init>(r12)
            xy1 r10 = r10.c
            bo r12 = r10.S
            java.lang.Object r12 = r12.g
            md2 r12 = (defpackage.md2) r12
            int r1 = r12.q
            r1 = r1 & 8
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L78
        L16:
            if (r12 == 0) goto L78
            int r1 = r12.p
            r1 = r1 & 8
            if (r1 == 0) goto L6f
            r1 = r12
            r5 = r2
        L20:
            if (r1 == 0) goto L6f
            boolean r6 = r1 instanceof defpackage.eh3
            if (r6 == 0) goto L32
            r6 = r1
            eh3 r6 = (defpackage.eh3) r6
            r6.a0(r0)
            boolean r6 = r0.n
            if (r6 == 0) goto L6a
            r2 = r1
            goto L78
        L32:
            int r6 = r1.p
            r6 = r6 & 8
            if (r6 == 0) goto L6a
            boolean r6 = r1 instanceof defpackage.kr0
            if (r6 == 0) goto L6a
            r6 = r1
            kr0 r6 = (defpackage.kr0) r6
            md2 r6 = r6.C
            r7 = r4
        L42:
            if (r6 == 0) goto L67
            int r8 = r6.p
            r8 = r8 & 8
            if (r8 == 0) goto L64
            int r7 = r7 + 1
            if (r7 != r3) goto L50
            r1 = r6
            goto L64
        L50:
            if (r5 != 0) goto L5b
            ug2 r5 = new ug2
            r8 = 16
            md2[] r8 = new defpackage.md2[r8]
            r5.<init>(r8)
        L5b:
            if (r1 == 0) goto L61
            r5.c(r1)
            r1 = r2
        L61:
            r5.c(r6)
        L64:
            md2 r6 = r6.s
            goto L42
        L67:
            if (r7 != r3) goto L6a
            goto L20
        L6a:
            md2 r1 = defpackage.w80.g(r5)
            goto L20
        L6f:
            int r1 = r12.q
            r1 = r1 & 8
            if (r1 == 0) goto L78
            md2 r12 = r12.s
            goto L16
        L78:
            eh3 r2 = (defpackage.eh3) r2
            if (r2 == 0) goto Lbb
            r12 = r2
            md2 r12 = (defpackage.md2) r12
            md2 r12 = r12.n
            boolean r12 = r12.A
            if (r12 != r3) goto Lbb
            mm2 r10 = defpackage.w80.Q(r2)
            gy1 r12 = defpackage.zf5.D(r10)
            l33 r10 = r12.H(r10, r4)
            float r12 = r10.a
            float r0 = r10.b
            float r1 = r10.c
            float r10 = r10.d
            android.graphics.Rect r9 = r9.G(r12, r0, r1, r10)
            int r10 = r9.left
            int r12 = r11.left
            int r10 = r10 - r12
            float r10 = (float) r10
            int r12 = r9.top
            int r11 = r11.top
            int r12 = r12 - r11
            float r11 = (float) r12
            l33 r12 = new l33
            int r0 = r9.width()
            float r0 = (float) r0
            float r0 = r0 + r10
            int r9 = r9.height()
            float r9 = (float) r9
            float r9 = r9 + r11
            r12.<init>(r10, r11, r0, r9)
            return r12
        Lbb:
            bo r9 = r10.S
            java.lang.Object r9 = r9.e
            mm2 r9 = (defpackage.mm2) r9
            l33 r9 = defpackage.zf5.l(r9, r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.o(gh3, android.graphics.Rect, jl3):l33");
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this.v = null;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        this.v = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager = this.t;
        if (accessibilityManager.isEnabled()) {
            this.v = null;
        }
        accessibilityManager.addAccessibilityStateChangeListener(this);
        accessibilityManager.addTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        q9 q9Var = this.q;
        Handler handler = q9Var.getHandler();
        if (handler != null) {
            handler.removeCallbacks(this);
        }
        Handler handler2 = q9Var.getHandler();
        if (handler2 != null) {
            handler2.removeCallbacks(this.Z);
        }
        this.J = false;
        this.W = false;
        AccessibilityManager accessibilityManager = this.t;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        accessibilityManager.removeTouchExplorationStateChangeListener(this);
    }

    public final boolean p() {
        AccessibilityManager accessibilityManager = this.t;
        if (!accessibilityManager.isEnabled()) {
            return false;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.v;
        if (enabledAccessibilityServiceList == null) {
            enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(-1);
            this.v = enabledAccessibilityServiceList;
        }
        return !enabledAccessibilityServiceList.isEmpty();
    }

    public final void q(xy1 xy1Var) {
        if (this.I.add(xy1Var) && p() && !this.J) {
            this.J = true;
            long jUptimeMillis = (this.K + this.f374u) - SystemClock.uptimeMillis();
            q9 q9Var = this.q;
            if (jUptimeMillis < 0) {
                q9Var.post(this);
            } else {
                q9Var.postDelayed(this, jUptimeMillis);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        uf2 uf2Var;
        fi fiVar = this.I;
        this.J = false;
        this.K = SystemClock.uptimeMillis();
        try {
            if (p()) {
                int i = fiVar.p;
                int i2 = 0;
                while (true) {
                    uf2Var = this.Y;
                    if (i2 >= i) {
                        break;
                    }
                    xy1 xy1Var = (xy1) fiVar.o[i2];
                    C(xy1Var, uf2Var);
                    D(xy1Var);
                    i2++;
                }
                uf2Var.d = 0;
                long[] jArr = uf2Var.a;
                if (jArr != td3.a) {
                    ji.V(jArr, -9187201950435737472L);
                    long[] jArr2 = uf2Var.a;
                    int i3 = uf2Var.c;
                    int i4 = i3 >> 3;
                    long j = 255 << ((i3 & 7) << 3);
                    jArr2[i4] = (jArr2[i4] & (~j)) | j;
                }
                uf2Var.e = td3.a(uf2Var.c) - uf2Var.d;
                if (!this.W) {
                    this.W = true;
                    this.Z.run();
                }
            }
            fiVar.clear();
            this.C.c();
            this.D.c();
            fiVar.clear();
        } catch (Throwable th) {
            fiVar.clear();
            throw th;
        }
    }

    public final int u(int i) {
        if (i == this.q.getSemanticsOwner().a().f) {
            return -1;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(defpackage.gh3 r20, defpackage.hh3 r21) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = r21
            int[] r3 = defpackage.qs1.a
            uf2 r3 = new uf2
            r3.<init>()
            r4 = 4
            java.util.List r5 = defpackage.gh3.j(r4, r1)
            xy1 r6 = r1.c
            int r7 = r5.size()
            r8 = 0
            r9 = r8
        L1a:
            if (r9 >= r7) goto L40
            java.lang.Object r10 = r5.get(r9)
            gh3 r10 = (defpackage.gh3) r10
            hs1 r11 = r0.m()
            int r10 = r10.f
            boolean r11 = r11.a(r10)
            if (r11 == 0) goto L3d
            uf2 r11 = r2.b
            boolean r11 = r11.b(r10)
            if (r11 != 0) goto L3a
            r0.q(r6)
            return
        L3a:
            r3.a(r10)
        L3d:
            int r9 = r9 + 1
            goto L1a
        L40:
            uf2 r2 = r2.b
            int[] r5 = r2.b
            long[] r2 = r2.a
            int r7 = r2.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L8b
            r9 = r8
        L4c:
            r10 = r2[r9]
            long r12 = ~r10
            r14 = 7
            long r12 = r12 << r14
            long r12 = r12 & r10
            r14 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r12 = r12 & r14
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 == 0) goto L86
            int r12 = r9 - r7
            int r12 = ~r12
            int r12 = r12 >>> 31
            r13 = 8
            int r12 = 8 - r12
            r14 = r8
        L66:
            if (r14 >= r12) goto L84
            r15 = 255(0xff, double:1.26E-321)
            long r15 = r15 & r10
            r17 = 128(0x80, double:6.32E-322)
            int r15 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1))
            if (r15 >= 0) goto L80
            int r15 = r9 << 3
            int r15 = r15 + r14
            r15 = r5[r15]
            boolean r15 = r3.b(r15)
            if (r15 != 0) goto L80
            r0.q(r6)
            return
        L80:
            long r10 = r10 >> r13
            int r14 = r14 + 1
            goto L66
        L84:
            if (r12 != r13) goto L8b
        L86:
            if (r9 == r7) goto L8b
            int r9 = r9 + 1
            goto L4c
        L8b:
            java.util.List r1 = defpackage.gh3.j(r4, r1)
            int r2 = r1.size()
        L93:
            if (r8 >= r2) goto Lb9
            java.lang.Object r3 = r1.get(r8)
            gh3 r3 = (defpackage.gh3) r3
            tf2 r4 = r0.U
            int r5 = r3.f
            java.lang.Object r4 = r4.b(r5)
            hh3 r4 = (defpackage.hh3) r4
            if (r4 == 0) goto Lb6
            hs1 r5 = r0.m()
            int r6 = r3.f
            boolean r5 = r5.a(r6)
            if (r5 == 0) goto Lb6
            r0.v(r3, r4)
        Lb6:
            int r8 = r8 + 1
            goto L93
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.v(gh3, hh3):void");
    }

    public final boolean w(AccessibilityEvent accessibilityEvent) {
        if (!p()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.B = true;
        }
        try {
            return ((Boolean) this.s.k(accessibilityEvent)).booleanValue();
        } finally {
            this.B = false;
        }
    }

    public final boolean x(int i, int i2, Integer num, List list) {
        if (i == Integer.MIN_VALUE || !p()) {
            return false;
        }
        AccessibilityEvent accessibilityEventI = i(i, i2);
        if (num != null) {
            accessibilityEventI.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            accessibilityEventI.setContentDescription(n42.a(list, ",", null, 62));
        }
        return w(accessibilityEventI);
    }

    public final void z(int i, String str, int i2) {
        AccessibilityEvent accessibilityEventI = i(u(i), 32);
        accessibilityEventI.setContentChangeTypes(i2);
        if (str != null) {
            accessibilityEventI.getText().add(str);
        }
        w(accessibilityEventI);
    }
}
