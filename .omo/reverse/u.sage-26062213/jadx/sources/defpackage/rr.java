package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Trace;
import com.google.android.gms.common.ConnectionResult;
import com.google.firebase.FirebaseCommonRegistrar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rr implements xo2, aa0, wt3, eh0, c20, xq0, sm3, mb3, mv3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ rr(int i, Object obj, Object obj2) {
        this.n = i;
        this.p = obj;
        this.o = obj2;
    }

    @Override // defpackage.xq0
    public void a(n03 n03Var) {
        xq0 xq0Var = (xq0) this.p;
        xq0 xq0Var2 = (xq0) this.o;
        xq0Var.a(n03Var);
        xq0Var2.a(n03Var);
    }

    @Override // defpackage.mb3
    public Object apply(Object obj) {
        ob3 ob3Var = (ob3) this.p;
        hp hpVar = (hp) this.o;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        eo eoVar = ob3Var.q;
        ArrayList arrayListZ = ob3Var.z(sQLiteDatabase, hpVar, eoVar.b);
        for (ry2 ry2Var : ry2.values()) {
            if (ry2Var != hpVar.c) {
                int size = eoVar.b - arrayListZ.size();
                if (size <= 0) {
                    break;
                }
                arrayListZ.addAll(ob3Var.z(sQLiteDatabase, hpVar.b(ry2Var), size));
            }
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < arrayListZ.size(); i++) {
            sb.append(((ro) arrayListZ.get(i)).a);
            if (i < arrayListZ.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                long j = cursorQuery.getLong(0);
                Set hashSet = (Set) map.get(Long.valueOf(j));
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(Long.valueOf(j), hashSet);
                }
                hashSet.add(new nb3(cursorQuery.getString(1), cursorQuery.getString(2)));
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        ListIterator listIterator = arrayListZ.listIterator();
        while (listIterator.hasNext()) {
            ro roVar = (ro) listIterator.next();
            long j2 = roVar.a;
            if (map.containsKey(Long.valueOf(j2))) {
                bo boVarC = roVar.c.c();
                for (nb3 nb3Var : (Set) map.get(Long.valueOf(j2))) {
                    boVarC.b(nb3Var.a, nb3Var.b);
                }
                listIterator.set(new ro(j2, roVar.b, boVarC.c()));
            }
        }
        return arrayListZ;
    }

    @Override // defpackage.mv3
    public Object b() {
        int i = this.n;
        Object obj = this.o;
        ed0 ed0Var = (ed0) this.p;
        switch (i) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                Iterable iterable = (Iterable) obj;
                ob3 ob3Var = (ob3) ed0Var.d;
                ob3Var.getClass();
                if (iterable.iterator().hasNext()) {
                    ob3Var.b().compileStatement("DELETE FROM events WHERE _id in ".concat(ob3.F(iterable))).execute();
                }
                break;
            default:
                Iterator it = ((HashMap) obj).entrySet().iterator();
                while (it.hasNext()) {
                    ((ob3) ed0Var.i).A(((Integer) r2.getValue()).intValue(), o72.t, (String) ((Map.Entry) it.next()).getKey());
                }
                break;
        }
        return null;
    }

    @Override // defpackage.sm3
    public boolean c() {
        cy2 cy2Var = (cy2) this.p;
        mp mpVar = (mp) this.o;
        if (!cy2Var.D) {
            cy2Var.h();
            mpVar.a = mp.a(cy2Var.B, mpVar.a);
            cy2Var.D = !cy2Var.g(cy2Var.A, r1 + mpVar.b);
        }
        return cy2Var.D;
    }

    @Override // defpackage.c20
    public Object d(b20 b20Var) {
        int i = this.n;
        eu0 eu0Var = eu0.n;
        Object obj = this.o;
        final int i2 = 0;
        Executor executor = (Executor) this.p;
        switch (i) {
            case 7:
                j4 j4Var = (j4) obj;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                Runnable runnable = new Runnable() { // from class: p42
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        switch (i3) {
                            case 0:
                                atomicBoolean2.set(true);
                                break;
                            default:
                                atomicBoolean2.set(true);
                                break;
                        }
                    }
                };
                j73 j73Var = b20Var.c;
                if (j73Var != null) {
                    j73Var.a(runnable, eu0Var);
                }
                executor.execute(new l20(atomicBoolean, b20Var, j4Var, 3));
                return "setForegroundAsync";
            default:
                ne1 ne1Var = (ne1) obj;
                final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                final int i3 = 1;
                Runnable runnable2 = new Runnable() { // from class: p42
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i32 = i3;
                        AtomicBoolean atomicBoolean22 = atomicBoolean2;
                        switch (i32) {
                            case 0:
                                atomicBoolean22.set(true);
                                break;
                            default:
                                atomicBoolean22.set(true);
                                break;
                        }
                    }
                };
                j73 j73Var2 = b20Var.c;
                if (j73Var2 != null) {
                    j73Var2.a(runnable2, eu0Var);
                }
                executor.execute(new l20(atomicBoolean2, b20Var, ne1Var, 6));
                return t64.a;
        }
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        int i = this.n;
        Object obj = this.p;
        String str = (String) this.o;
        switch (i) {
            case 1:
                i90 i90Var = (i90) obj;
                try {
                    Trace.beginSection(str);
                    return i90Var.f.j(hgVar);
                } finally {
                    Trace.endSection();
                }
            default:
                Context context = (Context) hgVar.a(Context.class);
                int i2 = ((mk0) obj).n;
                String strValueOf = "";
                switch (i2) {
                    case 25:
                        ApplicationInfo applicationInfo = context.getApplicationInfo();
                        if (applicationInfo != null) {
                            strValueOf = String.valueOf(applicationInfo.targetSdkVersion);
                        }
                        break;
                    case 26:
                        ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                        if (applicationInfo2 != null) {
                            strValueOf = String.valueOf(applicationInfo2.minSdkVersion);
                        }
                        break;
                    case 27:
                        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                            strValueOf = "tv";
                        } else if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                            strValueOf = "watch";
                        } else if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                            strValueOf = "auto";
                        } else if (Build.VERSION.SDK_INT >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                            strValueOf = "embedded";
                        }
                        break;
                    default:
                        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                        if (installerPackageName != null) {
                            strValueOf = FirebaseCommonRegistrar.a(installerPackageName);
                        }
                        break;
                }
                return new mo(str, strValueOf);
        }
    }

    @Override // defpackage.xo2
    public void onComplete(ow3 ow3Var) {
        xr xrVar = (xr) this.p;
        String str = (String) this.o;
        ow3Var.getClass();
        if (!ow3Var.j()) {
            ra3 ra3Var = ez3.a;
            ow3Var.f();
            ra3Var.getClass();
            ra3.g(new Object[0]);
            return;
        }
        ra3 ra3Var2 = ez3.a;
        Objects.toString(ow3Var.g());
        ra3Var2.getClass();
        ra3.h(new Object[0]);
        zp0 zp0Var = zu0.a;
        ca.y(dm0.c(lp0.p), null, null, new n(xrVar, str, null, 3), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d1 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #10 {all -> 0x0056, blocks: (B:11:0x003f, B:13:0x0042, B:14:0x0043, B:22:0x005f, B:62:0x00cd, B:64:0x00d1, B:66:0x00d4, B:70:0x00d8, B:71:0x00d9, B:65:0x00d2), top: B:165:0x001b, inners: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d9 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #10 {all -> 0x0056, blocks: (B:11:0x003f, B:13:0x0042, B:14:0x0043, B:22:0x005f, B:62:0x00cd, B:64:0x00d1, B:66:0x00d4, B:70:0x00d8, B:71:0x00d9, B:65:0x00d2), top: B:165:0x001b, inners: #9 }] */
    /* JADX WARN: Type inference failed for: r0v15, types: [hd0] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Integer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Integer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.Integer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v19, types: [ef5] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v36, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r13v53, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r13v64 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // defpackage.eh0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object then(defpackage.ow3 r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rr.then(ow3):java.lang.Object");
    }

    public /* synthetic */ rr(String str, Object obj, int i) {
        this.n = i;
        this.o = str;
        this.p = obj;
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        yc0 yc0Var = (yc0) this.p;
        ad0 ad0Var = (ad0) this.o;
        synchronized (yc0Var) {
            yc0Var.c = mt1.t(ad0Var);
        }
        return mt1.t(ad0Var);
    }
}
