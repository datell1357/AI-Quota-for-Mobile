package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o23 {
    public static final /* synthetic */ int e = 0;
    public final m23 a;
    public final gw4 b;
    public final da0 c;
    public volatile /* synthetic */ int d;

    static {
        AtomicIntegerFieldUpdater.newUpdater(o23.class, "d");
    }

    public o23(m23 m23Var) {
        this.a = m23Var;
        int i = 1;
        dm0.c(ca.B(k30.f(), new va1(w13.t, i)));
        ic icVar = new ic();
        icVar.b = new WeakReference(this);
        icVar.c = new gc(icVar, this);
        icVar.d = new hc(icVar);
        gw4 gw4Var = new gw4(this);
        this.b = gw4Var;
        rp rpVar = new rp(m23Var.f);
        ArrayList arrayList = (ArrayList) rpVar.b;
        ArrayList arrayList2 = (ArrayList) rpVar.e;
        ArrayList arrayList3 = (ArrayList) rpVar.d;
        ArrayList arrayList4 = (ArrayList) rpVar.f;
        ho1 ho1Var = m23Var.b;
        Object obj = ho1Var.n.a.get(do1.a);
        if (((Boolean) (obj == null ? Boolean.TRUE : obj)).booleanValue()) {
            arrayList2.add(new t52(18));
            arrayList4.add(new t52(19));
        }
        int i2 = 0;
        rpVar.d(new rc(i2), y33.a(Uri.class));
        int i3 = 3;
        rpVar.d(new rc(i3), y33.a(Integer.class));
        arrayList3.add(new js2(new bc(0), y33.a(a84.class)));
        rpVar.e(new ni(i2), y33.a(a84.class));
        rpVar.e(new ni(4), y33.a(a84.class));
        rpVar.e(new ni(9), y33.a(a84.class));
        rpVar.e(new ni(6), y33.a(Drawable.class));
        i3 i3Var = eo1.a;
        Object obj2 = ho1Var.n.a.get(eo1.a);
        int iIntValue = ((Number) (obj2 == null ? 4 : obj2)).intValue();
        int i4 = wh3.a;
        vh3 vh3Var = new vh3(iIntValue);
        int i5 = Build.VERSION.SDK_INT;
        Object obj3 = v31.a;
        if (i5 >= 29) {
            Object obj4 = ho1Var.n.a.get(eo1.c);
            if (((Boolean) (obj4 == null ? Boolean.TRUE : obj4)).booleanValue()) {
                Object obj5 = ho1Var.n.a.get(eo1.b);
                if (((v31) (obj5 == null ? obj3 : obj5)).equals(obj3)) {
                    arrayList4.add(new ca0(new fs3(vh3Var), i));
                }
            }
        }
        Object obj6 = ho1Var.n.a.get(eo1.b);
        arrayList4.add(new ca0(new gw(vh3Var, (v31) (obj6 != null ? obj6 : obj3)), i));
        rpVar.d(new rc(i), y33.a(File.class));
        rpVar.e(new ni(8), y33.a(a84.class));
        rpVar.e(new ni(i3), y33.a(ByteBuffer.class));
        rpVar.d(new rc(4), y33.a(String.class));
        int i6 = 2;
        rpVar.d(new rc(i6), y33.a(bt2.class));
        arrayList3.add(new js2(new bc(1), y33.a(a84.class)));
        arrayList3.add(new js2(new bc(2), y33.a(a84.class)));
        rpVar.e(new ni(7), y33.a(a84.class));
        rpVar.e(new ni(i6), y33.a(byte[].class));
        rpVar.e(new ni(5), y33.a(a84.class));
        rpVar.e(new ni(i), y33.a(Bitmap.class));
        arrayList.add(new x01(this, icVar, gw4Var));
        this.c = new da0(k30.F(arrayList), k30.F((ArrayList) rpVar.c), k30.F(arrayList3), k30.F(arrayList2), k30.F(arrayList4));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|2|(2:4|(1:6)(1:8))(0)|7|9|130|(1:(1:(1:(6:14|15|94|(3:96|(1:98)(1:99)|100)(2:101|(1:103)(2:106|107))|104|105)(2:19|20))(10:21|22|23|127|88|89|133|90|(5:93|94|(0)(0)|104|105)|92))(4:24|125|25|72))(15:29|(1:31)(1:32)|33|(4:(4:36|(3:40|(2:137|44)(1:43)|37)|136|39)(1:44)|135|114|(3:116|117|118)(2:121|122))(0)|(1:46)(1:47)|48|(1:50)(1:51)|52|(1:54)|55|(2:(1:61)(1:60)|62)|63|129|64|(2:66|(3:68|(2:71|72)|92)(1:75))(2:112|113))|131|76|(3:78|(1:80)|81)|84|(7:87|127|88|89|133|90|(0))|92|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x013b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01a5 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:15:0x0035, B:94:0x0181, B:96:0x0187, B:100:0x019e, B:99:0x0193, B:101:0x01a5, B:103:0x01a9, B:106:0x01b5, B:107:0x01bb, B:22:0x004b), top: B:130:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01d0 A[Catch: all -> 0x01dd, TRY_LEAVE, TryCatch #6 {all -> 0x01dd, blocks: (B:114:0x01cc, B:116:0x01d0, B:121:0x01df, B:122:0x01e5), top: B:135:0x01cc }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01df A[Catch: all -> 0x01dd, TRY_ENTER, TryCatch #6 {all -> 0x01dd, blocks: (B:114:0x01cc, B:116:0x01d0, B:121:0x01df, B:122:0x01e5), top: B:135:0x01cc }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0187 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:15:0x0035, B:94:0x0181, B:96:0x0187, B:100:0x019e, B:99:0x0193, B:101:0x01a5, B:103:0x01a9, B:106:0x01b5, B:107:0x01bb, B:22:0x004b), top: B:130:0x0027 }] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [x63] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.Object, o23] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v20, types: [j21, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [j21, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v29, types: [j21] */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v4, types: [j21, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, jo1] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [j21, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [x63] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [x63] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6, types: [x63] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.jo1 r15, int r16, defpackage.fh0 r17) {
        /*
            Method dump skipped, instruction units count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o23.a(jo1, int, fh0):java.lang.Object");
    }

    public final Object b(jo1 jo1Var, fh0 fh0Var) {
        jw3 jw3Var = jo1Var.c;
        return ((jo1Var.o instanceof y23) || ((h22) k30.w(jo1Var, no1.e)) != null) ? dm0.r(new p(this, jo1Var, null, 21), fh0Var) : a(jo1Var, 1, fh0Var);
    }

    public final s23 c() {
        return (s23) this.a.d.getValue();
    }

    public final void d(f21 f21Var, jw3 jw3Var, j21 j21Var) {
        jo1 jo1Var = f21Var.b;
        if (jw3Var instanceof aj) {
            ((xm2) k30.w(jo1Var, no1.a)).getClass();
        }
        j21Var.getClass();
        jo1Var.getClass();
    }
}
