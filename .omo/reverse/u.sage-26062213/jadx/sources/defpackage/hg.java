package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hg implements xf3, w90 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;

    public hg(int i) {
        switch (i) {
            case 1:
                this.a = new AtomicBoolean(false);
                this.b = new CountDownLatch(1);
                this.f = "PublicSuffixDatabase.list";
                break;
            default:
                this.a = new int[]{2131230796, 2131230794, 2131230720};
                this.b = new int[]{2131230744, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.c = new int[]{2131230793, 2131230795, 2131230737, R.drawable.abc_text_cursor_material, 2131230790, 2131230791, 2131230792};
                this.d = new int[]{2131230769, R.drawable.abc_cab_background_internal_bg, 2131230768};
                this.e = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.f = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public static boolean m(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList n(Context context, int i) {
        int iC = hy3.c(context, R.attr.colorControlHighlight);
        int iB = hy3.b(context, R.attr.colorButtonNormal);
        int[] iArr = hy3.b;
        int[] iArr2 = hy3.d;
        int iB2 = h80.b(iC, i);
        return new ColorStateList(new int[][]{iArr, iArr2, hy3.c, hy3.f}, new int[]{iB, iB2, h80.b(iC, i), i});
    }

    public static LayerDrawable p(o73 o73Var, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable drawableC = o73Var.c(context, R.drawable.abc_star_black_48dp);
        Drawable drawableC2 = o73Var.c(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableC instanceof BitmapDrawable) && drawableC.getIntrinsicWidth() == dimensionPixelSize && drawableC.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableC;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableC.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableC2 instanceof BitmapDrawable) && drawableC2.getIntrinsicWidth() == dimensionPixelSize && drawableC2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableC2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableC2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void t(Drawable drawable, int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterE;
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = ig.b;
        }
        PorterDuff.Mode mode2 = ig.b;
        synchronized (ig.class) {
            porterDuffColorFilterE = o73.e(i, mode);
        }
        drawableMutate.setColorFilter(porterDuffColorFilterE);
    }

    @Override // defpackage.w90
    public Object a(Class cls) {
        if (!((Set) this.a).contains(z03.a(cls))) {
            q73.i(cls, ".", "Attempting to request an undeclared dependency ");
            return null;
        }
        Object objA = ((w90) this.f).a(cls);
        if (!cls.equals(v03.class)) {
            return objA;
        }
        return new c83();
    }

    @Override // defpackage.w90
    public n03 b(z03 z03Var) {
        if (((Set) this.e).contains(z03Var)) {
            return ((w90) this.f).b(z03Var);
        }
        q73.i(z03Var, ">>.", "Attempting to request an undeclared dependency Provider<Set<");
        return null;
    }

    @Override // defpackage.w90
    public Set d(z03 z03Var) {
        if (((Set) this.d).contains(z03Var)) {
            return ((w90) this.f).d(z03Var);
        }
        q73.i(z03Var, ">.", "Attempting to request an undeclared dependency Set<");
        return null;
    }

    @Override // defpackage.xf3
    public boolean e() {
        return ((Boolean) ((ws2) this.d).getValue()).booleanValue();
    }

    @Override // defpackage.xf3
    public Object f(xg2 xg2Var, df1 df1Var, fh0 fh0Var) {
        Object objR = dm0.r(new p(this, xg2Var, df1Var, null, 12), fh0Var);
        return objR == ri0.n ? objR : t64.a;
    }

    @Override // defpackage.w90
    public n03 g(Class cls) {
        return k(z03.a(cls));
    }

    @Override // defpackage.w90
    public dr2 h(z03 z03Var) {
        if (((Set) this.c).contains(z03Var)) {
            return ((w90) this.f).h(z03Var);
        }
        q73.i(z03Var, ">.", "Attempting to request an undeclared dependency Deferred<");
        return null;
    }

    @Override // defpackage.xf3
    public float j(float f) {
        return ((Number) ((pe1) this.a).k(Float.valueOf(f))).floatValue();
    }

    @Override // defpackage.w90
    public n03 k(z03 z03Var) {
        if (((Set) this.b).contains(z03Var)) {
            return ((w90) this.f).k(z03Var);
        }
        q73.i(z03Var, ">.", "Attempting to request an undeclared dependency Provider<");
        return null;
    }

    @Override // defpackage.w90
    public Object l(z03 z03Var) {
        if (((Set) this.a).contains(z03Var)) {
            return ((w90) this.f).l(z03Var);
        }
        q73.i(z03Var, ".", "Attempting to request an undeclared dependency ");
        return null;
    }

    public dr2 o(Class cls) {
        return h(z03.a(cls));
    }

    public ColorStateList q(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return zf5.E(context, R.color.abc_tint_edittext);
        }
        if (i == 2131230786) {
            return zf5.E(context, R.color.abc_tint_switch_track);
        }
        if (i != R.drawable.abc_switch_thumb_material) {
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return n(context, hy3.c(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return n(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return n(context, hy3.c(context, R.attr.colorAccent));
            }
            if (i == 2131230781 || i == R.drawable.abc_spinner_textfield_background_material) {
                return zf5.E(context, R.color.abc_tint_spinner);
            }
            if (m((int[]) this.b, i)) {
                return hy3.d(context, R.attr.colorControlNormal);
            }
            if (m((int[]) this.e, i)) {
                return zf5.E(context, R.color.abc_tint_default);
            }
            if (m((int[]) this.f, i)) {
                return zf5.E(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return zf5.E(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = hy3.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = hy3.b;
            iArr2[0] = hy3.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = hy3.e;
            iArr2[1] = hy3.c(context, R.attr.colorControlActivated);
            iArr[2] = hy3.f;
            iArr2[2] = hy3.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = hy3.b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = hy3.e;
            iArr2[1] = hy3.c(context, R.attr.colorControlActivated);
            iArr[2] = hy3.f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public mr1 r() throws IOException {
        iv2 iv2Var = iv2.a;
        Object obj = iv2.a;
        xg0 xg0Var = obj != null ? (xg0) obj : null;
        Context contextB = xg0Var != null ? xg0Var.b() : null;
        AssetManager assets = contextB != null ? contextB.getAssets() : null;
        if (assets != null) {
            InputStream inputStreamOpen = assets.open((String) this.f);
            inputStreamOpen.getClass();
            return se0.E(inputStreamOpen);
        }
        if (Build.FINGERPRINT == null) {
            p61.k("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            return null;
        }
        p61.k("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        return null;
    }

    public void s() {
        try {
            d23 d23Var = new d23(r());
            try {
                g00 g00VarP = d23Var.p(d23Var.readInt());
                g00 g00VarP2 = d23Var.p(d23Var.readInt());
                d23Var.close();
                synchronized (this) {
                    g00VarP.getClass();
                    this.c = g00VarP;
                    g00VarP2.getClass();
                    this.d = g00VarP2;
                }
            } finally {
            }
        } finally {
            ((CountDownLatch) this.b).countDown();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public s0 u() {
        AtomicLong atomicLong;
        long j;
        final int i;
        ListenableFuture listenableFutureA;
        fu0 fu0Var = fu0.n;
        jk3 jk3Var = (jk3) this.f;
        if (jk3Var.isDone()) {
            return jk3Var;
        }
        do {
            atomicLong = (AtomicLong) this.b;
            j = atomicLong.get();
            i = (int) (j >>> 32);
        } while (!atomicLong.compareAndSet(j, (((long) (((int) j) + 1)) & 4294967295L) | (((long) i) << 32)));
        AtomicReference atomicReference = (AtomicReference) this.d;
        jk3 jk3Var2 = new jk3();
        ListenableFuture listenableFuture = (ListenableFuture) atomicReference.getAndSet(jk3Var2);
        if (listenableFuture == null) {
            pc4 pc4VarA = vf5.a(new d90(i, 13, this));
            a34 a34Var = new a34();
            a34Var.v = new z24(a34Var, pc4VarA);
            fu0Var.execute(a34Var);
            listenableFutureA = a34Var;
        } else {
            qi qiVar = new qi() { // from class: qe5
                @Override // defpackage.qi
                public final /* synthetic */ ListenableFuture apply(Object obj) {
                    return this.a.y(i);
                }
            };
            int i2 = vf5.a;
            listenableFutureA = tf1.a(listenableFuture, Throwable.class, new ic5(4, ye5.a(), qiVar), (fi3) this.e);
        }
        jk3Var2.o(listenableFutureA);
        re5 re5Var = new re5(this, i);
        jk3Var2.a(new i63(this, jk3Var2, re5Var, 11, false), fu0Var);
        return re5Var;
    }

    public void v(String str) {
        qt4.a(ld5.a.matcher(str).matches(), "Module must match [a-z]+(_[a-z]+)*: %s", str);
        qt4.a(!ld5.c.contains(str), "Module name is reserved and cannot be used: %s", str);
        this.c = str;
    }

    public void w(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        Pattern pattern = ld5.a;
        this.e = str;
    }

    public Uri x() {
        String strY;
        String strConcat;
        String str = (String) this.b;
        String str2 = (String) this.c;
        Account account = hd5.a;
        Account account2 = (Account) this.d;
        qt4.a(account2.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        qt4.a(account2.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        qt4.a(account2.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (hd5.a.equals(account2)) {
            strY = "shared";
        } else {
            String str3 = account2.type;
            String str4 = account2.name;
            strY = di0.y(new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length()), str3, ":", str4);
        }
        String str5 = (String) this.e;
        StringBuilder sb = new StringBuilder(strY.length() + str2.length() + str.length() + 2 + 1 + 1 + String.valueOf(str5).length());
        di0.E(sb, "/", str, "/", str2);
        String strT = xw1.t(sb, "/", strY, "/", str5);
        z43 z43VarC = ((gp1) this.f).c();
        Pattern pattern = td5.a;
        if (z43VarC.isEmpty()) {
            strConcat = null;
        } else {
            ev1 ev1Var = new ev1("+");
            Iterator it = z43VarC.iterator();
            StringBuilder sb2 = new StringBuilder();
            ev1Var.a(sb2, it);
            strConcat = "transform=".concat(sb2.toString());
        }
        return new Uri.Builder().scheme("android").authority((String) this.a).path(strT).encodedFragment(strConcat).build();
    }

    public s0 y(int i) {
        fu0 fu0Var;
        AtomicLong atomicLong = (AtomicLong) this.b;
        if (((int) (atomicLong.get() >>> 32)) > i) {
            yo1 yo1Var = yo1.f426u;
            return yo1Var != null ? yo1Var : new yo1();
        }
        se5 se5Var = new se5(i);
        while (true) {
            AtomicReference atomicReference = (AtomicReference) this.c;
            se5 se5Var2 = (se5) atomicReference.get();
            if (se5Var2 != null && se5Var2.f315u > i) {
                yo1 yo1Var2 = yo1.f426u;
                return yo1Var2 != null ? yo1Var2 : new yo1();
            }
            while (!atomicReference.compareAndSet(se5Var2, se5Var)) {
                if (atomicReference.get() != se5Var2) {
                    break;
                }
            }
            if (((int) (atomicLong.get() >>> 32)) > i) {
                se5Var.cancel(true);
                while (!atomicReference.compareAndSet(se5Var, null) && atomicReference.get() == se5Var) {
                }
                return se5Var;
            }
            w85 w85Var = (w85) this.a;
            pi piVar = (pi) w85Var.o;
            if (piVar == null || (fu0Var = (fu0) w85Var.p) == null) {
                se5Var.o((jk3) this.f);
                return se5Var;
            }
            pc4 pc4VarA = vf5.a(piVar);
            a34 a34Var = new a34();
            a34Var.v = new z24(a34Var, pc4VarA);
            fu0Var.execute(a34Var);
            se5Var.o(a34Var);
            return se5Var;
        }
    }

    public hg(Context context) {
        this.b = "files";
        this.c = "common";
        this.d = ld5.b;
        this.e = "";
        hp1 hp1Var = lp1.o;
        this.f = new gp1(4);
        qt4.a(context != null, "Context cannot be null", new Object[0]);
        this.a = context.getPackageName();
    }

    public hg(pi piVar) {
        this.b = new AtomicLong(-9223372034707292160L);
        this.c = new AtomicReference(null);
        this.d = new AtomicReference(null);
        fu0 fu0Var = fu0.n;
        this.e = new fi3(fu0Var);
        jk3 jk3Var = new jk3();
        this.f = jk3Var;
        w85 w85Var = new w85();
        w85Var.o = piVar;
        w85Var.p = fu0Var;
        this.a = w85Var;
        jk3Var.a(w85Var, fu0Var);
    }

    public hg(pe1 pe1Var) {
        this.a = pe1Var;
        this.b = new cq0(this);
        this.c = new dh2();
        Boolean bool = Boolean.FALSE;
        this.d = ca.A(bool);
        this.e = ca.A(bool);
        this.f = ca.A(bool);
    }
}
