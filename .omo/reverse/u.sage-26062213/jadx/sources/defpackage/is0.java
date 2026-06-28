package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.text.Spanned;
import android.util.Log;
import android.view.Display;
import android.view.RoundedCorner;
import android.view.View;
import com.google.android.gms.common.api.Api;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class is0 {
    public static final z70 b = z70.A;
    public static final z70 c;
    public static final z70 d;
    public static final z70 e;
    public static final z70 f;
    public static final z70 g;
    public static final int[] h;
    public static final long[] i;
    public static final Object[] j;
    public static final yb k;
    public static final oy3 l;
    public final /* synthetic */ int a;

    static {
        z70 z70Var = z70.t;
        c = z70Var;
        d = z70.B;
        z70 z70Var2 = z70.f434u;
        e = z70Var2;
        f = z70Var;
        g = z70Var2;
        h = new int[0];
        i = new long[0];
        j = new Object[0];
        k = new yb(5);
        l = new oy3(0, new long[0], new Object[0]);
    }

    public /* synthetic */ is0(int i2) {
        this.a = i2;
    }

    public static ma3 A(Display display, int i2) {
        RoundedCorner roundedCorner;
        int i3;
        if (Build.VERSION.SDK_INT < 31 || (roundedCorner = display.getRoundedCorner(i2)) == null) {
            return null;
        }
        int position = roundedCorner.getPosition();
        if (position != 0) {
            i3 = 1;
            if (position != 1) {
                i3 = 2;
                if (position != 2) {
                    i3 = 3;
                    if (position != 3) {
                        k21.f(di0.q(position, "Invalid position: "));
                        return null;
                    }
                }
            }
        } else {
            i3 = 0;
        }
        return new ma3(i3, roundedCorner.getRadius(), roundedCorner.getCenter());
    }

    public static File B(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static e54 C(ag1 ag1Var) {
        return ((ua2) ag1Var.j(wa2.a)).b;
    }

    public static g03 D(km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        Object objC = km1Var.c("http.protocol.version");
        return objC == null ? dn1.s : (g03) objC;
    }

    public static final boolean E(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    public static final nd2 G(ag1 ag1Var, nd2 nd2Var) {
        if (nd2Var.b(l9.F)) {
            return nd2Var;
        }
        ag1Var.R(1219399079, 0, null, null);
        nd2 nd2Var2 = (nd2) nd2Var.a(new z(5, ag1Var), kd2.b);
        ag1Var.p(false);
        return nd2Var2;
    }

    public static final nd2 H(ag1 ag1Var, nd2 nd2Var) {
        ag1Var.W(439770924);
        nd2 nd2VarG = G(ag1Var, nd2Var);
        ag1Var.p(false);
        return nd2VarG;
    }

    public static MappedByteBuffer I(Context context, Uri uri) {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        try {
            parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            if (parcelFileDescriptorOpenFileDescriptor != null) {
                parcelFileDescriptorOpenFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                parcelFileDescriptorOpenFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    public static final nd2 J(nd2 nd2Var, zr2 zr2Var) {
        return nd2Var.c(new cs2(zr2Var));
    }

    public static final nd2 K(nd2 nd2Var, float f2) {
        return nd2Var.c(new xr2(f2, f2, f2, f2));
    }

    public static final nd2 L(nd2 nd2Var, float f2, float f3) {
        return nd2Var.c(new xr2(f2, f3, f2, f3));
    }

    public static nd2 M(nd2 nd2Var, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            f3 = 0.0f;
        }
        return L(nd2Var, f2, f3);
    }

    public static final nd2 N(nd2 nd2Var, float f2, float f3, float f4, float f5) {
        return nd2Var.c(new xr2(f2, f3, f4, f5));
    }

    public static nd2 O(nd2 nd2Var, float f2, float f3, float f4, int i2) {
        if ((i2 & 1) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            f4 = 0.0f;
        }
        return N(nd2Var, f2, 0.0f, f3, f4);
    }

    public static LinkedHashSet P(Set set, yh2 yh2Var) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(oa2.a0(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(yh2Var);
        return linkedHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02b2 A[PHI: r14 r15
  0x02b2: PHI (r14v4 java.util.List) = (r14v3 java.util.List), (r14v5 java.util.List) binds: [B:106:0x0266, B:119:0x02b0] A[DONT_GENERATE, DONT_INLINE]
  0x02b2: PHI (r15v6 int) = (r15v5 int), (r15v7 int) binds: [B:106:0x0266, B:119:0x02b0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x044f  */
    /* JADX WARN: Type inference failed for: r1v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r38v0 */
    /* JADX WARN: Type inference failed for: r38v1, types: [int] */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r42v0, types: [android.view.ViewStructure] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Q(android.view.ViewStructure r42, defpackage.xy1 r43, android.view.autofill.AutofillId r44, java.lang.String r45, defpackage.n33 r46) {
        /*
            Method dump skipped, instruction units count: 1147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.is0.Q(android.view.ViewStructure, xy1, android.view.autofill.AutofillId, java.lang.String, n33):void");
    }

    public static final void R(Bundle bundle, String str, List list) {
        bundle.putStringArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    public static vl2 S(d23 d23Var) {
        int i2 = Integer.parseInt(d23Var.Q(Long.MAX_VALUE));
        long j2 = Long.parseLong(d23Var.Q(Long.MAX_VALUE));
        long j3 = Long.parseLong(d23Var.Q(Long.MAX_VALUE));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i3 = Integer.parseInt(d23Var.Q(Long.MAX_VALUE));
        for (int i4 = 0; i4 < i3; i4++) {
            String strQ = d23Var.Q(Long.MAX_VALUE);
            int iF0 = zs3.F0(strQ, ':', 0, 6);
            if (iF0 == -1) {
                k21.l("Unexpected header: ".concat(strQ));
                return null;
            }
            String string = zs3.Y0(strQ.substring(0, iF0)).toString();
            String strSubstring = strQ.substring(iF0 + 1);
            String lowerCase = string.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object arrayList = linkedHashMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lowerCase, arrayList);
            }
            ((List) arrayList).add(strSubstring);
        }
        return new vl2(i2, j2, j3, new pl2(oa2.e0(linkedHashMap)), null, null);
    }

    public static final void T(xn3 xn3Var, int i2, Object obj) {
        int iH = xn3Var.h(i2);
        Object[] objArr = xn3Var.c;
        Object obj2 = objArr[iH];
        objArr[iH] = rb0.a;
        if (obj == obj2) {
            return;
        }
        wb0.a("Slot table is out of sync (expected " + obj + ", got " + obj2 + ")");
    }

    public static int U(double d2) {
        if (Double.isNaN(d2)) {
            k21.f("Cannot round NaN value.");
            return 0;
        }
        if (d2 > 2.147483647E9d) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (d2 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d2);
    }

    public static int V(float f2) {
        if (!Float.isNaN(f2)) {
            return Math.round(f2);
        }
        k21.f("Cannot round NaN value.");
        return 0;
    }

    public static long W(double d2) {
        if (!Double.isNaN(d2)) {
            return Math.round(d2);
        }
        k21.f("Cannot round NaN value.");
        return 0L;
    }

    public static final void X(br2 br2Var, int i2, Object obj) {
        br2Var.k[(br2Var.l - br2Var.g[br2Var.h - 1].b) + i2] = obj;
    }

    public static final void Y(br2 br2Var, int i2, Object obj, int i3, Object obj2) {
        int i4 = br2Var.l - br2Var.g[br2Var.h - 1].b;
        Object[] objArr = br2Var.k;
        objArr[i2 + i4] = obj;
        objArr[i4 + i3] = obj2;
    }

    public static final String Z(int i2) {
        if (i2 == 0) {
            return "0";
        }
        char[] cArr = w80.b;
        int i3 = 0;
        char[] cArr2 = {cArr[(i2 >> 28) & 15], cArr[(i2 >> 24) & 15], cArr[(i2 >> 20) & 15], cArr[(i2 >> 16) & 15], cArr[(i2 >> 12) & 15], cArr[(i2 >> 8) & 15], cArr[(i2 >> 4) & 15], cArr[i2 & 15]};
        while (i3 < 8 && cArr2[i3] == '0') {
            i3++;
        }
        on4.m(i3, 8, 8);
        return new String(cArr2, i3, 8 - i3);
    }

    public static final cl0 a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        return new cl0(new float[]{f2, f3, f4, f5, f6, f7, f8, f9});
    }

    public static void a0(vl2 vl2Var, c23 c23Var) {
        c23Var.j(vl2Var.a);
        c23Var.writeByte(10);
        c23Var.j(vl2Var.b);
        c23Var.writeByte(10);
        c23Var.j(vl2Var.c);
        c23Var.writeByte(10);
        Set<Map.Entry> setEntrySet = vl2Var.d.a.entrySet();
        Iterator it = setEntrySet.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        c23Var.j(size);
        c23Var.writeByte(10);
        for (Map.Entry entry : setEntrySet) {
            for (String str : (List) entry.getValue()) {
                c23Var.e0((String) entry.getKey());
                c23Var.e0(":");
                c23Var.e0(str);
                c23Var.writeByte(10);
            }
        }
    }

    public static final es0 b(Context context) {
        float f2 = context.getResources().getConfiguration().fontScale;
        float f3 = context.getResources().getDisplayMetrics().density;
        kb1 kb1VarA = lb1.a(f2);
        if (kb1VarA == null) {
            kb1VarA = new k32(f2);
        }
        return new es0(f3, f2, kb1VarA);
    }

    public static final void c(final Object obj, final int i2, final k02 k02Var, final ka0 ka0Var, ag1 ag1Var, final int i3) {
        int i4;
        ag1Var.X(872548579);
        if ((i3 & 6) == 0) {
            i4 = (ag1Var.h(obj) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= ag1Var.d(i2) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i4 |= ag1Var.h(k02Var) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= ag1Var.h(ka0Var) ? 2048 : 1024;
        }
        if (ag1Var.N(i4 & 1, (i4 & 1171) != 1170)) {
            boolean zF = ag1Var.f(obj) | ag1Var.f(k02Var);
            Object objK = ag1Var.K();
            Object obj2 = rb0.a;
            if (zF || objK == obj2) {
                objK = new i02(obj, k02Var);
                ag1Var.g0(objK);
            }
            i02 i02Var = (i02) objK;
            i02Var.c = i2;
            ws2 ws2Var = i02Var.g;
            h03 h03Var = bv2.a;
            i02 i02Var2 = (i02) ag1Var.j(h03Var);
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            try {
                if (i02Var2 != ((i02) ws2Var.getValue())) {
                    ws2Var.setValue(i02Var2);
                    if (i02Var.d > 0) {
                        i02 i02Var3 = i02Var.e;
                        if (i02Var3 != null) {
                            i02Var3.b();
                        }
                        if (i02Var2 != null) {
                            i02Var2.a();
                        } else {
                            i02Var2 = null;
                        }
                        i02Var.e = i02Var2;
                    }
                }
                k75.L(po3VarX, po3VarE, pe1VarE);
                boolean zF2 = ag1Var.f(i02Var);
                Object objK2 = ag1Var.K();
                if (zF2 || objK2 == obj2) {
                    objK2 = new v(13, i02Var);
                    ag1Var.g0(objK2);
                }
                zf5.a(i02Var, (pe1) objK2, ag1Var);
                gg4.a(h03Var.a(i02Var), ka0Var, ag1Var, ((i4 >> 6) & 112) | 8);
            } catch (Throwable th) {
                k75.L(po3VarX, po3VarE, pe1VarE);
                throw th;
            }
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: j02
                @Override // defpackage.df1
                public final Object f(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    is0.c(obj, i2, k02Var, ka0Var, (ag1) obj3, qj0.f0(i3 | 1));
                    return t64.a;
                }
            };
        }
    }

    public static ds2 d(int i2) {
        float f2 = (i2 & 1) != 0 ? 0.0f : 8.0f;
        return new ds2(f2, 0.0f, f2, 0.0f);
    }

    public static final ds2 e(float f2, float f3, float f4, float f5) {
        return new ds2(f2, f3, f4, f5);
    }

    public static ds2 f(float f2) {
        return new ds2(0.0f, 0.0f, 0.0f, f2);
    }

    public static final long g(float f2, float f3) {
        return (((long) Float.floatToRawIntBits(f3)) & 4294967295L) | (Float.floatToRawIntBits(f2) << 32);
    }

    public static final qd1 h(Matcher matcher, int i2, CharSequence charSequence) {
        if (matcher.find(i2)) {
            return new qd1(matcher, charSequence);
        }
        return null;
    }

    public static final View i(md2 md2Var) {
        pb4 pb4Var = w80.R(md2Var.n).B;
        View interopView = pb4Var != null ? pb4Var.getInteropView() : null;
        if (interopView != null) {
            return interopView;
        }
        k21.n("Could not fetch interop view");
        return null;
    }

    public static final void j(List list, int i2, int i3) {
        int iX = x(i2, list);
        if (iX < 0) {
            iX = -(iX + 1);
        }
        while (iX < list.size() && ((zt1) list.get(iX)).b < i3) {
        }
    }

    public static final boolean k(int i2, int i3, int i4, byte[] bArr, byte[] bArr2) {
        bArr.getClass();
        bArr2.getClass();
        for (int i5 = 0; i5 < i4; i5++) {
            if (bArr[i5 + i2] != bArr2[i5 + i3]) {
                return false;
            }
        }
        return true;
    }

    public static final int l(int i2, int i3, int[] iArr) {
        iArr.getClass();
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else {
                if (i7 <= i3) {
                    return i6;
                }
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }

    public static final int m(long[] jArr, int i2, long j2) {
        jArr.getClass();
        int i3 = i2 - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            long j3 = jArr[i5];
            if (j3 < j2) {
                i4 = i5 + 1;
            } else {
                if (j3 <= j2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    public static hk3 o(hk3 hk3Var) {
        ca2 ca2Var = hk3Var.n;
        ca2Var.b();
        return ca2Var.v > 0 ? hk3Var : hk3.o;
    }

    public static final int p(float f2) {
        return Math.round((float) Math.ceil(f2));
    }

    public static final void q(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException("size=" + j2 + " offset=" + j3 + " byteCount=" + j4);
        }
    }

    public static final void r(AutoCloseable autoCloseable, Throwable th) {
        boolean zIsTerminated;
        if (autoCloseable != null) {
            if (th != null) {
                try {
                    xw1.x(autoCloseable);
                    return;
                } catch (Throwable th2) {
                    on4.j(th, th2);
                    return;
                }
            }
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (!(autoCloseable instanceof ExecutorService)) {
                if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                    return;
                }
                if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                    return;
                } else if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                    return;
                } else {
                    q73.d();
                    return;
                }
            }
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                return;
            }
            executorService.shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static final void s(tn3 tn3Var, ArrayList arrayList, int i2) {
        boolean zL = tn3Var.l(i2);
        int[] iArr = tn3Var.b;
        if (zL) {
            arrayList.add(tn3Var.n(i2));
            return;
        }
        int i3 = iArr[(i2 * 5) + 3] + i2;
        for (int i4 = i2 + 1; i4 < i3; i4 += iArr[(i4 * 5) + 3]) {
            s(tn3Var, arrayList, i4);
        }
    }

    public static boolean t(File file, Resources resources, int i2) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i2);
        } catch (Throwable th) {
            th = th;
            inputStreamOpenRawResource = null;
        }
        try {
            boolean zU = u(file, inputStreamOpenRawResource);
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (IOException unused) {
                }
            }
            return zU;
        } catch (Throwable th2) {
            th = th2;
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static boolean u(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 != -1) {
                    fileOutputStream.write(bArr, 0, i2);
                } else {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                }
            }
            fileOutputStream.close();
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return true;
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    public static d84 v() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = ((151200000 + jCurrentTimeMillis) / 3600000) * 3600000;
        long j3 = j2 - 604800000;
        return new d84(tv4.F(new p84("Current session", 35.0d, Long.valueOf((-10800001) + jCurrentTimeMillis), Long.valueOf(7199999 + jCurrentTimeMillis)), new p84("Weekly limits", 65.0d, Long.valueOf(j3), Long.valueOf(j2)), new p84("Claude Design", 25.0d, Long.valueOf(j3), Long.valueOf(j2))), jCurrentTimeMillis);
    }

    public static final xi2 w(Context context) {
        context.getClass();
        xi2 xi2Var = new xi2(context);
        ii2 ii2Var = xi2Var.b;
        mk2 mk2Var = ii2Var.t;
        mk2Var.a(new ua0(mk2Var));
        mk2 mk2Var2 = ii2Var.t;
        mk2Var2.a(new wa0());
        mk2Var2.a(new ut0());
        return xi2Var;
    }

    public static final int x(int i2, List list) {
        int size = list.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            int iL = nt1.l(((zt1) list.get(i4)).b, i2);
            if (iL < 0) {
                i3 = i4 + 1;
            } else {
                if (iL <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static y70 y(ag1 ag1Var) {
        return ((ua2) ag1Var.j(wa2.a)).a;
    }

    public static final Object z(hg2 hg2Var, rx2 rx2Var, Serializable serializable) {
        hg2Var.getClass();
        rx2Var.getClass();
        Object objC = hg2Var.c(rx2Var);
        return objC == null ? serializable : objC;
    }

    public void F(jb3 jb3Var, Object obj) {
        String str;
        jb3Var.getClass();
        if (obj == null) {
            return;
        }
        switch (this.a) {
            case 0:
                str = "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
                break;
            case 1:
                str = "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
                break;
            case 2:
                str = "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
                break;
            case 3:
                str = "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
                break;
            case 4:
                str = "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                break;
            default:
                str = "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
                break;
        }
        pb3 pb3VarK0 = jb3Var.k0(str);
        try {
            n(pb3VarK0, obj);
            pb3VarK0.c0();
            r(pb3VarK0, null);
        } finally {
        }
    }

    public final void n(pb3 pb3Var, Object obj) {
        int i2;
        int i3 = 1;
        switch (this.a) {
            case 0:
                gs0 gs0Var = (gs0) obj;
                pb3Var.getClass();
                gs0Var.getClass();
                pb3Var.P(1, gs0Var.a);
                pb3Var.P(2, gs0Var.b);
                break;
            case 1:
                mx2 mx2Var = (mx2) obj;
                pb3Var.getClass();
                mx2Var.getClass();
                pb3Var.P(1, mx2Var.a);
                pb3Var.h(2, mx2Var.b.longValue());
                break;
            case 2:
                vv3 vv3Var = (vv3) obj;
                pb3Var.getClass();
                vv3Var.getClass();
                pb3Var.P(1, vv3Var.a);
                pb3Var.h(2, vv3Var.b);
                pb3Var.h(3, vv3Var.c);
                break;
            case 3:
                hg4 hg4Var = (hg4) obj;
                pb3Var.getClass();
                hg4Var.getClass();
                pb3Var.P(1, hg4Var.a);
                pb3Var.P(2, hg4Var.b);
                break;
            case 4:
                og4 og4Var = (og4) obj;
                pb3Var.getClass();
                og4Var.getClass();
                pb3Var.P(1, og4Var.a);
                pb3Var.h(2, ug4.i(og4Var.b));
                pb3Var.P(3, og4Var.c);
                pb3Var.P(4, og4Var.d);
                zl0 zl0Var = zl0.b;
                pb3Var.k(5, bi4.L(og4Var.e));
                pb3Var.k(6, bi4.L(og4Var.f));
                pb3Var.h(7, og4Var.g);
                pb3Var.h(8, og4Var.h);
                pb3Var.h(9, og4Var.i);
                pb3Var.h(10, og4Var.k);
                jq jqVar = og4Var.l;
                jqVar.getClass();
                int iOrdinal = jqVar.ordinal();
                if (iOrdinal == 0) {
                    i2 = 0;
                } else if (iOrdinal != 1) {
                    p61.x();
                } else {
                    i2 = 1;
                }
                pb3Var.h(11, i2);
                pb3Var.h(12, og4Var.m);
                pb3Var.h(13, og4Var.n);
                pb3Var.h(14, og4Var.o);
                pb3Var.h(15, og4Var.p);
                pb3Var.h(16, og4Var.q ? 1L : 0L);
                jr2 jr2Var = og4Var.r;
                jr2Var.getClass();
                int iOrdinal2 = jr2Var.ordinal();
                if (iOrdinal2 == 0) {
                    i3 = 0;
                } else if (iOrdinal2 != 1) {
                    p61.x();
                }
                pb3Var.h(17, i3);
                pb3Var.h(18, og4Var.s);
                pb3Var.h(19, og4Var.t);
                pb3Var.h(20, og4Var.f243u);
                pb3Var.h(21, og4Var.v);
                pb3Var.h(22, og4Var.w);
                String str = og4Var.x;
                if (str == null) {
                    pb3Var.e(23);
                } else {
                    pb3Var.P(23, str);
                }
                Boolean bool = og4Var.y;
                if ((bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null) == null) {
                    pb3Var.e(24);
                } else {
                    pb3Var.h(24, r5.intValue());
                }
                lf0 lf0Var = og4Var.j;
                pb3Var.h(25, ug4.g(lf0Var.a));
                pb3Var.k(26, ug4.b(lf0Var.b));
                pb3Var.h(27, lf0Var.c ? 1L : 0L);
                pb3Var.h(28, lf0Var.d ? 1L : 0L);
                pb3Var.h(29, lf0Var.e ? 1L : 0L);
                pb3Var.h(30, lf0Var.f ? 1L : 0L);
                pb3Var.h(31, lf0Var.g);
                pb3Var.h(32, lf0Var.h);
                pb3Var.k(33, ug4.h(lf0Var.i));
                break;
            default:
                sg4 sg4Var = (sg4) obj;
                pb3Var.getClass();
                sg4Var.getClass();
                pb3Var.P(1, sg4Var.a);
                pb3Var.P(2, sg4Var.b);
                break;
        }
    }
}
