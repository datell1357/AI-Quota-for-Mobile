package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.datatransport.TransportRegistrar;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q73 implements yv0, mb3, eh0, tq3, cu3, z14, aa0 {
    public final /* synthetic */ int n;

    public static /* synthetic */ void d() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void e(int i, int i2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append((Object) "serialized size must be non-negative, was ");
        sb.append(i2);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void f(int i, int i2, Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(i);
        sb.append((Object) " parameters found ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void g(int i, Object obj, int i2, Object obj2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(obj);
        sb.append(i2);
        sb.append(obj2);
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void h(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void i(Object obj, Object obj2, String str) {
        throw new v00(str + obj + obj2, 2);
    }

    public static /* synthetic */ void k(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void l(String str) {
        throw new NoSuchElementException(str);
    }

    public static /* synthetic */ void m(String str, long j, Object obj) {
        throw new IllegalArgumentException((str + j + obj).toString());
    }

    public static /* synthetic */ void n(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void o(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }

    public static /* synthetic */ void p() throws eo4 {
        throw new eo4();
    }

    public static /* synthetic */ void q(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void r(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void s(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void t(String str) throws fo4 {
        throw new fo4(str);
    }

    @Override // defpackage.mb3
    public Object apply(Object obj) {
        Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (cursorRawQuery.moveToNext()) {
                eh ehVarA = hp.a();
                ehVarA.G(cursorRawQuery.getString(1));
                ehVarA.q = sy2.b(cursorRawQuery.getInt(2));
                String string = cursorRawQuery.getString(3);
                ehVarA.p = string == null ? null : Base64.decode(string, 0);
                arrayList.add(ehVarA.k());
            }
            return arrayList;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // defpackage.tq3
    public boolean c() {
        return false;
    }

    @Override // defpackage.cu3
    public Object get() {
        throw new IllegalStateException();
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        switch (this.n) {
            case 13:
                return TransportRegistrar.lambda$getComponents$0(hgVar);
            case 14:
                return TransportRegistrar.lambda$getComponents$1(hgVar);
            default:
                return TransportRegistrar.lambda$getComponents$2(hgVar);
        }
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        boolean z;
        if (ow3Var.j()) {
            pm pmVar = (pm) ow3Var.g();
            w13 w13Var = w13.H;
            w13Var.e("Crashlytics report successfully enqueued to DataTransport: " + pmVar.b);
            File file = pmVar.c;
            z = true;
            if (file.delete()) {
                w13Var.e("Deleted report file: " + file.getPath());
            } else {
                w13Var.n("Crashlytics could not delete report file: " + file.getPath(), null);
            }
        } else {
            Log.w("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", ow3Var.f());
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public /* synthetic */ q73(int i) {
        this.n = i;
    }

    @Override // defpackage.z14
    public void a(Exception exc) {
    }

    @Override // defpackage.yv0
    public double b(double d) {
        return d;
    }
}
