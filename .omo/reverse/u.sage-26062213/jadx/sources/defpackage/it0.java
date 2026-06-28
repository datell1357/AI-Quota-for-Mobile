package defpackage;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class it0 {
    public static final SimpleDateFormat a = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);
    public static File b;

    public static void a(String str) {
        String strR = xw1.r("[", a.format(new Date()), "] RollingWindowWorker: ", str, "\n");
        ez3.a.getClass();
        ra3.c(new Object[0]);
        File file = b;
        if (file == null) {
            return;
        }
        synchronized (file) {
            try {
                try {
                    if (file.length() > 262144) {
                        b(file);
                    }
                    ix.g(file, strR);
                } catch (Exception unused) {
                    ez3.a.getClass();
                    ra3.g(new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void b(File file) {
        try {
            String strN = ix.N(file);
            if (strN.length() > 131072) {
                String strSubstring = strN.substring(strN.length() - 131072);
                int iF0 = zs3.F0(strSubstring, '\n', 0, 6);
                ix.c0(file, iF0 >= 0 ? "--- Log trimmed ---\n".concat(strSubstring.substring(iF0 + 1)) : "--- Log trimmed ---\n".concat(strSubstring));
            }
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
        }
    }
}
