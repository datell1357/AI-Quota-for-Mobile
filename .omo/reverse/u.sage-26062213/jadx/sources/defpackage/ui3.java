package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Process;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ui3 implements qo4, RemoteCall, p75, d25 {
    public static Boolean r;
    public final /* synthetic */ int n;
    public Object o;
    public Object p;
    public Object q;

    public ui3(int i) {
        this.n = i;
        switch (i) {
            case 4:
                this.o = new WeakHashMap();
                this.p = new WeakHashMap();
                this.q = new WeakHashMap();
                break;
            case 5:
                this.o = new xk4("", 0L, null);
                this.p = new xk4("", 0L, null);
                this.q = new ArrayList();
                break;
            case 8:
                break;
            case 14:
                this.o = new AtomicBoolean(false);
                new ConcurrentHashMap();
                this.p = new ConcurrentHashMap();
                new ConcurrentHashMap();
                this.q = new ConcurrentHashMap();
                break;
            default:
                this.o = new AtomicReference(is0.l);
                this.p = new Object();
                break;
        }
    }

    public static ui3 h(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new ui3(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x0020, B:21:0x006b, B:24:0x008f, B:15:0x0032, B:17:0x0058, B:19:0x0063, B:20:0x0067), top: B:31:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x0020, B:21:0x006b, B:24:0x008f, B:15:0x0032, B:17:0x0058, B:19:0x0063, B:20:0x0067), top: B:31:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
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
    @Override // defpackage.d25
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ui3.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        switch (this.n) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                y65 y65Var = (y65) ((a75) obj).getService();
                s65 s65Var = new s65((w65) this.o, (ListenerHolder) this.q);
                String str = (String) this.p;
                Parcel parcelF = y65Var.F();
                parcelF.writeString(str);
                ku4.c(parcelF, s65Var);
                y65Var.G(28, parcelF);
                break;
            default:
                Account account = (Account) this.o;
                String str2 = (String) this.p;
                Bundle bundle = (Bundle) this.q;
                hb5 hb5Var = (hb5) ((l45) obj).getService();
                af5 af5Var = new af5(0, (pw3) obj2);
                Parcel parcelZza = hb5Var.zza();
                iv4.d(parcelZza, af5Var);
                iv4.c(parcelZza, account);
                parcelZza.writeString(str2);
                iv4.c(parcelZza, bundle);
                hb5Var.zzc(1, parcelZza);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    @Override // defpackage.p75
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(int r10, java.lang.Throwable r11, byte[] r12) {
        /*
            r9 = this;
            java.lang.Object r12 = r9.o
            m75 r12 = (defpackage.m75) r12
            r12.v()
            java.lang.Object r0 = r9.q
            ua5 r0 = (defpackage.ua5) r0
            r1 = 200(0xc8, float:2.8E-43)
            if (r10 == r1) goto L18
            r1 = 204(0xcc, float:2.86E-43)
            if (r10 == r1) goto L18
            r1 = 304(0x130, float:4.26E-43)
            if (r10 != r1) goto L33
            r10 = r1
        L18:
            if (r11 != 0) goto L33
            java.lang.Object r10 = r12.a
            r45 r10 = (defpackage.r45) r10
            a25 r10 = r10.f
            defpackage.r45.l(r10)
            x15 r10 = r10.n
            long r1 = r0.n
            java.lang.Long r11 = java.lang.Long.valueOf(r1)
            java.lang.String r1 = "[sgtm] Upload succeeded for row_id"
            r10.b(r11, r1)
            u75 r10 = defpackage.u75.p
            goto L6f
        L33:
            java.lang.Object r1 = r12.a
            r45 r1 = (defpackage.r45) r1
            a25 r1 = r1.f
            defpackage.r45.l(r1)
            x15 r1 = r1.i
            long r2 = r0.n
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r10)
            java.lang.String r4 = "[sgtm] Upload failed for row_id. response, exception"
            r1.d(r4, r2, r3, r11)
            d05 r11 = defpackage.e05.f77u
            r1 = 0
            java.lang.Object r11 = r11.a(r1)
            java.lang.String r11 = (java.lang.String) r11
            java.lang.String r1 = ","
            java.lang.String[] r11 = r11.split(r1)
            java.util.List r11 = java.util.Arrays.asList(r11)
            java.lang.String r10 = java.lang.String.valueOf(r10)
            boolean r10 = r11.contains(r10)
            if (r10 == 0) goto L6d
            u75 r10 = defpackage.u75.r
            goto L6f
        L6d:
            u75 r10 = defpackage.u75.q
        L6f:
            java.lang.Object r9 = r9.p
            java.util.concurrent.atomic.AtomicReference r9 = (java.util.concurrent.atomic.AtomicReference) r9
            java.lang.Object r11 = r12.a
            r45 r11 = (defpackage.r45) r11
            o95 r2 = r11.o()
            po4 r3 = new po4
            long r5 = r0.n
            int r4 = r10.n
            long r7 = r0.s
            r3.<init>(r4, r5, r7)
            r7 = r5
            r2.v()
            r2.w()
            r11 = 1
            vc5 r11 = r2.L(r11)
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r11)
            i63 r1 = new i63
            r5 = 9
            r6 = 0
            r4 = r3
            r3 = r11
            r1.<init>(r2, r3, r4, r5, r6)
            r2.J(r1)
            java.lang.Object r11 = r12.a
            r45 r11 = (defpackage.r45) r11
            a25 r11 = r11.f
            defpackage.r45.l(r11)
            x15 r11 = r11.n
            java.lang.Long r12 = java.lang.Long.valueOf(r7)
            java.lang.String r0 = "[sgtm] Updated status for row_id"
            r11.c(r12, r10, r0)
            monitor-enter(r9)
            r9.set(r10)     // Catch: java.lang.Throwable -> Lbf
            r9.notifyAll()     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lbf
            return
        Lbf:
            r0 = move-exception
            r10 = r0
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lbf
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ui3.b(int, java.lang.Throwable, byte[]):void");
    }

    public Object c() {
        long jW = c75.w();
        if (jW == uy3.a) {
            return this.q;
        }
        oy3 oy3Var = (oy3) ((AtomicReference) this.o).get();
        int iA = oy3Var.a(jW);
        if (iA >= 0) {
            return oy3Var.c[iA];
        }
        return null;
    }

    public /* bridge */ /* synthetic */ Object clone() {
        switch (this.n) {
            case 5:
                ui3 ui3Var = new ui3(((xk4) this.o).clone());
                ArrayList arrayList = (ArrayList) this.q;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((ArrayList) ui3Var.q).add(((xk4) obj).clone());
                }
                return ui3Var;
            default:
                return super.clone();
        }
    }

    public ColorStateList d(int i) {
        int resourceId;
        ColorStateList colorStateListE;
        TypedArray typedArray = (TypedArray) this.p;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListE = zf5.E((Context) this.o, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateListE;
    }

    public Drawable e(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.p;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : zf5.H((Context) this.o, resourceId);
    }

    public Typeface f(int i, int i2, og ogVar) throws Exception {
        og ogVar2;
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        int resourceId = ((TypedArray) this.p).getResourceId(i, 0);
        if (resourceId != 0) {
            if (((TypedValue) this.q) == null) {
                this.q = new TypedValue();
            }
            Context context = (Context) this.o;
            TypedValue typedValue = (TypedValue) this.q;
            ThreadLocal threadLocal = t73.a;
            if (!context.isRestricted()) {
                Resources resources = context.getResources();
                resources.getValue(resourceId, typedValue, true);
                CharSequence charSequence = typedValue.string;
                if (charSequence == null) {
                    throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(resourceId) + "\" (" + Integer.toHexString(resourceId) + ") is not a Font: " + typedValue);
                }
                String string = charSequence.toString();
                if (!string.startsWith("res/")) {
                    ogVar.a(-3);
                    return null;
                }
                int i3 = typedValue.assetCookie;
                s82 s82Var = s44.b;
                Typeface typeface = (Typeface) s82Var.b(s44.b(resources, resourceId, string, i3, i2));
                int i4 = 17;
                if (typeface != null) {
                    new Handler(Looper.getMainLooper()).post(new h7(i4, ogVar, typeface));
                    return typeface;
                }
                try {
                } catch (IOException e) {
                    e = e;
                    ogVar2 = ogVar;
                } catch (XmlPullParserException e2) {
                    e = e2;
                    ogVar2 = ogVar;
                }
                if (string.toLowerCase().endsWith(".xml")) {
                    gb1 gb1VarG = on4.G(resources.getXml(resourceId), resources);
                    if (gb1VarG == null) {
                        try {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            ogVar.a(-3);
                            return null;
                        } catch (IOException e3) {
                            iOException = e3;
                            ogVar2 = ogVar;
                        } catch (XmlPullParserException e4) {
                            xmlPullParserException = e4;
                            ogVar2 = ogVar;
                            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                            ogVar2.a(-3);
                            return null;
                        }
                    } else {
                        try {
                            return s44.a(context, gb1VarG, resources, resourceId, string, typedValue.assetCookie, i2, ogVar, true);
                        } catch (IOException e5) {
                            e = e5;
                            ogVar2 = ogVar;
                        } catch (XmlPullParserException e6) {
                            e = e6;
                            ogVar2 = ogVar;
                            xmlPullParserException = e;
                            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                            ogVar2.a(-3);
                            return null;
                        }
                    }
                    iOException = e;
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), iOException);
                } else {
                    ogVar2 = ogVar;
                    try {
                        int i5 = typedValue.assetCookie;
                        Typeface typefaceR = s44.a.r(context, resources, resourceId, string, i2);
                        if (typefaceR != null) {
                            s82Var.c(s44.b(resources, resourceId, string, i5, i2), typefaceR);
                        }
                        if (typefaceR != null) {
                            new Handler(Looper.getMainLooper()).post(new h7(i4, ogVar2, typefaceR));
                        } else {
                            ogVar2.a(-3);
                        }
                        return typefaceR;
                    } catch (IOException e7) {
                        e = e7;
                    } catch (XmlPullParserException e8) {
                        e = e8;
                        xmlPullParserException = e;
                        Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                        ogVar2.a(-3);
                        return null;
                    }
                }
                ogVar2.a(-3);
                return null;
            }
        }
        return null;
    }

    public boolean g() {
        if (((tr3) this.o).getValue() != this.q) {
            return true;
        }
        ui3 ui3Var = (ui3) this.p;
        return ui3Var != null && ui3Var.g();
    }

    public void i(f22 f22Var) {
        lq0 lq0Var = (lq0) this.q;
        if (lq0Var != null) {
            lq0Var.run();
        }
        lq0 lq0Var2 = new lq0((r22) this.o, f22Var);
        this.q = lq0Var2;
        ((Handler) this.p).postAtFrontOfQueue(lq0Var2);
    }

    public void j() {
        ((TypedArray) this.p).recycle();
    }

    public void k(Object obj) {
        long jW = c75.w();
        if (jW == uy3.a) {
            this.q = obj;
            return;
        }
        synchronized (this.p) {
            oy3 oy3Var = (oy3) ((AtomicReference) this.o).get();
            int iA = oy3Var.a(jW);
            if (iA < 0) {
                ((AtomicReference) this.o).set(oy3Var.b(jW, obj));
            } else {
                oy3Var.c[iA] = obj;
            }
        }
    }

    public ic l() {
        String strSubstring;
        int i;
        ba5 ba5Var;
        ba5 ba5Var2;
        String str;
        String str2 = (String) this.q;
        o75 o75Var = (o75) this.o;
        cu3 cu3Var = o75Var.f;
        int i2 = 3;
        if (!c75.W(o75Var.b)) {
            return new ic(rc5.A(), new a13(i2, 17, i2));
        }
        if (r == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                r = Boolean.valueOf(Process.isIsolated());
            } else {
                try {
                    Object objInvoke = Process.class.getMethod("isIsolated", null).invoke(Process.class, null);
                    objInvoke.getClass();
                    r = (Boolean) objInvoke;
                } catch (ReflectiveOperationException unused) {
                    r = Boolean.FALSE;
                }
            }
        }
        if (r.booleanValue()) {
            return new ic(rc5.A(), new a13(i2, 18, i2));
        }
        pc5 pc5VarB = o75Var.g.b();
        zm4 zm4Var = pc5VarB.c;
        nm4 nm4Var = nm4.r;
        di diVar = l75.a;
        int iIndexOf = str2.indexOf("#");
        if (iIndexOf >= 0) {
            strSubstring = str2.substring(0, iIndexOf);
        } else {
            if (str2.contains("@")) {
                k21.f("Invalid package name: ".concat(str2));
                return null;
            }
            strSubstring = str2;
        }
        int i3 = 4;
        int i4 = 5;
        if (!pc5VarB.h) {
            i = 14;
        } else if (!pc5VarB.a || !pc5VarB.b.contains(nm4Var)) {
            i = 3;
        } else if (zm4Var.c() != 0) {
            List list = pc5VarB.f;
            i = (list.isEmpty() || list.contains(strSubstring)) ? pc5VarB.g.contains(strSubstring) ? 6 : 0 : 5;
        } else {
            i = 4;
        }
        int i5 = 7;
        if (i != 0) {
            ba5Var2 = new ba5(null, new a13(i));
        } else {
            try {
                str = pc5VarB.e;
            } catch (Exception e) {
                gp4.b(Level.WARNING, o75Var.a(), e, "Failed to read shared file for %s", str2);
                ba5Var = new ba5(i95.c, new a13(i2, 10, i2));
                ba5Var2 = ba5Var;
            }
            if (str.isEmpty()) {
                cr2 cr2Var = (cr2) o75Var.h.get();
                if (cr2Var.b()) {
                    str = ((ApplicationInfo) cr2Var.a()).dataDir;
                } else {
                    gp4.b(Level.WARNING, o75Var.a(), null, "Unable to get GMS application info, using defaults.", new Object[0]);
                    ba5Var = new ba5(i95.c, new a13(i2, i5, i2));
                    ba5Var2 = ba5Var;
                }
            }
            String str3 = File.separator;
            String str4 = pc5VarB.d;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
            sb.append(str);
            sb.append(str3);
            sb.append(str4);
            String string = sb.toString();
            ui3 ui3Var = new ui3(zm4Var, str2);
            Uri.Builder builderScheme = new Uri.Builder().scheme("file");
            String string2 = ui3Var.m().toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + string.length() + String.valueOf(str3).length() + string2.length());
            sb2.append(str3);
            sb2.append(string);
            sb2.append(str3);
            sb2.append(string2);
            Uri uriBuild = builderScheme.appendEncodedPath(sb2.toString()).build();
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
            try {
                try {
                    ba5Var2 = new ba5((i95) ((gd5) cu3Var.get()).a(uriBuild, new ep1(pc5VarB.k.t())), new a13(i4, 2, i2));
                } finally {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
            } catch (fo4 e2) {
                gp4.b(Level.SEVERE, o75Var.a(), e2, "Failed to parse snapshot from shared storage for %s", str2);
                ba5Var2 = new ba5(null, new a13(9));
            } catch (FileNotFoundException unused2) {
                gp4.b(Level.INFO, o75Var.a(), null, "Shared storage file not found for %s", str2);
                ba5Var2 = new ba5(null, new a13(8));
            }
        }
        a13 a13Var = ba5Var2.b;
        i95 i95Var = ba5Var2.a;
        if (i95Var != null) {
            return new ic(i95Var, a13Var);
        }
        int i6 = a13Var.c;
        try {
            gd5 gd5Var = (gd5) cu3Var.get();
            Uri uri = (Uri) this.p;
            xo4 xo4Var = (xo4) rc5.A().s(7);
            kn4 kn4Var = kn4.a;
            int i7 = um4.a;
            kn4 kn4Var2 = kn4.b;
            InputStream inputStreamC = hu4.c(gd5Var.b(uri));
            try {
                rn4 rn4VarA = ((qn4) xo4Var).a(inputStreamC, kn4Var2);
                if (inputStreamC != null) {
                    inputStreamC.close();
                }
                return new ic((rc5) rn4VarA, new a13(i3, i6, i2));
            } catch (Throwable th) {
                if (inputStreamC != null) {
                    try {
                        inputStreamC.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException unused3) {
            gp4.b(Level.INFO, o75Var.a(), null, "Unable to retrieve flag snapshot for %s, using defaults.", str2);
            return p() ? new ic(i95.c, new a13(i2, 16, i2)) : new ic(rc5.A(), new a13(i2, 11, i2));
        }
    }

    public File m() {
        String str = (String) ((cu3) this.p).get();
        String str2 = (String) ((cu3) this.q).get();
        return new File(xw1.t(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length() + 3), str, "/", str2, ".pb"));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n(defpackage.zm4 r10, java.util.Set r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ui3.n(zm4, java.util.Set, java.lang.String):void");
    }

    public void o(Object obj, String str) {
        ui3 ui3Var = new ui3(8);
        ((ui3) this.q).q = ui3Var;
        this.q = ui3Var;
        ui3Var.p = obj;
        ui3Var.o = str;
    }

    public boolean p() {
        m95 m95VarC = ((o75) this.o).g.c();
        return m95VarC.v() && ((AbstractCollection) m95VarC.A()).contains(nm4.r);
    }

    public String toString() {
        switch (this.n) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.o);
                sb.append('{');
                ui3 ui3Var = (ui3) ((ui3) this.p).q;
                String str = "";
                while (ui3Var != null) {
                    Object obj = ui3Var.p;
                    sb.append(str);
                    String str2 = (String) ui3Var.o;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
                    }
                    ui3Var = (ui3) ui3Var.q;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.qo4
    public Object zza() {
        Object objZza = ((qo4) this.o).zza();
        return new k05((wc5) objZza, ((di2) ((gt4) this.q).o).o);
    }

    public /* synthetic */ ui3(vl4 vl4Var, Account account, String str, Bundle bundle) {
        this.n = 18;
        this.o = account;
        this.p = str;
        this.q = bundle;
    }

    public /* synthetic */ ui3(pb5 pb5Var, String str, Object obj, int i) {
        this.n = i;
        this.o = str;
        this.p = obj;
        this.q = pb5Var;
    }

    public ui3(String str) {
        this.n = 9;
        ui3 ui3Var = new ui3(8);
        this.p = ui3Var;
        this.q = ui3Var;
        this.o = str;
    }

    public ui3(zm4 zm4Var, String str) {
        this.n = 13;
        this.o = lr.b;
        this.p = c75.M(new pc4(19, this, zm4Var));
        this.q = c75.M(new pc4(18, this, str));
    }

    public ui3(o75 o75Var, String str) {
        this.n = 17;
        this.o = o75Var;
        this.q = str;
        Context context = o75Var.b;
        Pattern pattern = ld5.a;
        hg hgVar = new hg(context);
        hgVar.v("phenotype");
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4);
        sb.append("/");
        sb.append(str);
        sb.append(".pb");
        hgVar.w(sb.toString());
        this.p = hgVar.x();
    }

    public ui3(xk4 xk4Var) {
        this.n = 5;
        this.o = xk4Var;
        this.p = xk4Var.clone();
        this.q = new ArrayList();
    }

    public ui3(SystemForegroundService systemForegroundService) {
        this.n = 0;
        this.o = new r22(systemForegroundService, true);
        this.p = new Handler(Looper.getMainLooper());
    }

    public /* synthetic */ ui3(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    public ui3(Context context, TypedArray typedArray) {
        this.n = 2;
        this.o = context;
        this.p = typedArray;
    }

    public ui3(c54 c54Var, ui3 ui3Var) {
        this.n = 3;
        this.o = c54Var;
        this.p = ui3Var;
        this.q = c54Var.n;
    }
}
