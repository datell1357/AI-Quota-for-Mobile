package defpackage;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xo0 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ yo0 b;

    public /* synthetic */ xo0(yo0 yo0Var, int i) {
        this.a = i;
        this.b = yo0Var;
    }

    private final Object a() {
        String string;
        yo0 yo0Var = this.b;
        synchronized (yo0Var) {
            try {
                pj1 pj1Var = (pj1) yo0Var.a.get();
                ArrayList arrayListA = pj1Var.a();
                synchronized (pj1Var) {
                    ju1 ju1Var = pj1Var.a;
                    v vVar = new v(11, pj1Var);
                    ju1Var.getClass();
                }
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < arrayListA.size(); i++) {
                    io ioVar = (io) arrayListA.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", ioVar.a);
                    jSONObject.put("dates", new JSONArray((Collection) ioVar.b));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call() {
        /*
            r8 = this;
            int r0 = r8.a
            switch(r0) {
                case 0: goto L99;
                default: goto L5;
            }
        L5:
            yo0 r1 = r8.b
            monitor-enter(r1)
            rz1 r8 = r1.a     // Catch: java.lang.Throwable -> L89
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Throwable -> L89
            r5 = r8
            pj1 r5 = (defpackage.pj1) r5     // Catch: java.lang.Throwable -> L89
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L89
            n03 r8 = r1.c     // Catch: java.lang.Throwable -> L89
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Throwable -> L89
            tq0 r8 = (defpackage.tq0) r8     // Catch: java.lang.Throwable -> L89
            dh1 r0 = r8.b     // Catch: java.lang.Throwable -> L89
            java.lang.Object r4 = r0.n     // Catch: java.lang.Throwable -> L89
            java.util.HashSet r4 = (java.util.HashSet) r4     // Catch: java.lang.Throwable -> L89
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L89
            java.lang.Object r6 = r0.n     // Catch: java.lang.Throwable -> L93
            java.util.HashSet r6 = (java.util.HashSet) r6     // Catch: java.lang.Throwable -> L93
            java.util.Set r6 = java.util.Collections.unmodifiableSet(r6)     // Catch: java.lang.Throwable -> L93
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L93
            boolean r4 = r6.isEmpty()     // Catch: java.lang.Throwable -> L89
            java.lang.String r8 = r8.a     // Catch: java.lang.Throwable -> L89
            if (r4 == 0) goto L37
        L35:
            r4 = r8
            goto L5e
        L37:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L89
            r4.<init>()     // Catch: java.lang.Throwable -> L89
            r4.append(r8)     // Catch: java.lang.Throwable -> L89
            r8 = 32
            r4.append(r8)     // Catch: java.lang.Throwable -> L89
            java.lang.Object r8 = r0.n     // Catch: java.lang.Throwable -> L89
            java.util.HashSet r8 = (java.util.HashSet) r8     // Catch: java.lang.Throwable -> L89
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L89
            java.lang.Object r0 = r0.n     // Catch: java.lang.Throwable -> L90
            java.util.HashSet r0 = (java.util.HashSet) r0     // Catch: java.lang.Throwable -> L90
            java.util.Set r0 = java.util.Collections.unmodifiableSet(r0)     // Catch: java.lang.Throwable -> L90
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L90
            java.lang.String r8 = defpackage.tq0.a(r0)     // Catch: java.lang.Throwable -> L89
            r4.append(r8)     // Catch: java.lang.Throwable -> L89
            java.lang.String r8 = r4.toString()     // Catch: java.lang.Throwable -> L89
            goto L35
        L5e:
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L89
            java.lang.String r6 = r5.b(r2)     // Catch: java.lang.Throwable -> L8c
            r4.getClass()     // Catch: java.lang.Throwable -> L8c
            rx2 r7 = new rx2     // Catch: java.lang.Throwable -> L8c
            r7.<init>(r4)     // Catch: java.lang.Throwable -> L8c
            ju1 r8 = r5.a     // Catch: java.lang.Throwable -> L8c
            k4 r2 = new k4     // Catch: java.lang.Throwable -> L8c
            r3 = 2
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L8c
            r8.getClass()     // Catch: java.lang.Throwable -> L8c
            n r0 = new n     // Catch: java.lang.Throwable -> L8c
            r3 = 20
            r4 = 0
            r0.<init>(r8, r2, r4, r3)     // Catch: java.lang.Throwable -> L8c
            d01 r8 = defpackage.d01.n     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r8 = defpackage.ca.H(r8, r0)     // Catch: java.lang.Throwable -> L8c
            hg2 r8 = (defpackage.hg2) r8     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L89
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L89
            return r4
        L89:
            r0 = move-exception
            r8 = r0
            goto L97
        L8c:
            r0 = move-exception
            r8 = r0
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8c
            throw r8     // Catch: java.lang.Throwable -> L89
        L90:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L90
            throw r0     // Catch: java.lang.Throwable -> L89
        L93:
            r0 = move-exception
            r8 = r0
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L93
            throw r8     // Catch: java.lang.Throwable -> L89
        L97:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L89
            throw r8
        L99:
            java.lang.Object r8 = r8.a()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xo0.call():java.lang.Object");
    }
}
