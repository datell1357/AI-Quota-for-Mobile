package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e13 implements h51 {
    public static final Charset p = Charset.forName("UTF-8");
    public final File n;
    public d13 o;

    public e13(File file) {
        this.n = file;
    }

    @Override // defpackage.h51
    public final void a() {
        w80.n(this.o, "There was a problem closing the Crashlytics log file.");
        this.o = null;
    }

    public final void b() {
        File file = this.n;
        if (this.o == null) {
            try {
                this.o = new d13(file);
            } catch (IOException e) {
                Log.e("FirebaseCrashlytics", "Could not open log file: " + file, e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    @Override // defpackage.h51
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String g() {
        /*
            r6 = this;
            java.io.File r0 = r6.n
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto Lc
        La:
            r6 = r2
            goto L3a
        Lc:
            r6.b()
            d13 r0 = r6.o
            if (r0 != 0) goto L14
            goto La
        L14:
            int[] r3 = new int[]{r1}
            int r0 = r0.N()
            byte[] r0 = new byte[r0]
            d13 r6 = r6.o     // Catch: java.io.IOException -> L29
            xh1 r4 = new xh1     // Catch: java.io.IOException -> L29
            r4.<init>(r0, r3, r1)     // Catch: java.io.IOException -> L29
            r6.r(r4)     // Catch: java.io.IOException -> L29
            goto L31
        L29:
            r6 = move-exception
            java.lang.String r4 = "A problem occurred while reading the Crashlytics log file."
            java.lang.String r5 = "FirebaseCrashlytics"
            android.util.Log.e(r5, r4, r6)
        L31:
            d90 r6 = new d90
            r3 = r3[r1]
            r4 = 9
            r6.<init>(r3, r4, r0)
        L3a:
            if (r6 != 0) goto L3e
            r3 = r2
            goto L49
        L3e:
            int r0 = r6.o
            byte[] r3 = new byte[r0]
            java.lang.Object r6 = r6.p
            byte[] r6 = (byte[]) r6
            java.lang.System.arraycopy(r6, r1, r3, r1, r0)
        L49:
            if (r3 == 0) goto L53
            java.lang.String r6 = new java.lang.String
            java.nio.charset.Charset r0 = defpackage.e13.p
            r6.<init>(r3, r0)
            return r6
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e13.g():java.lang.String");
    }

    @Override // defpackage.h51
    public final void o(long j, String str) {
        b();
        if (this.o == null) {
            return;
        }
        try {
            if (str.length() > 16384) {
                str = "...".concat(str.substring(str.length() - 16384));
            }
            this.o.b(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(p));
            while (!this.o.z() && this.o.N() > 65536) {
                this.o.F();
            }
        } catch (IOException e) {
            Log.e("FirebaseCrashlytics", "There was a problem writing to the Crashlytics log.", e);
        }
    }
}
