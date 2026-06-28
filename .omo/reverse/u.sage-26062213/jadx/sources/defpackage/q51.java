package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q51 {
    public String a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object g;

    public q51(Context context) {
        String string;
        String str = ((nn) w13.O.l(context)).a;
        this.a = str;
        File filesDir = context.getFilesDir();
        this.b = filesDir;
        if (str.isEmpty()) {
            string = ".com.google.firebase.crashlytics.files.v1";
        } else {
            StringBuilder sb = new StringBuilder(".crashlytics.v3");
            sb.append(File.separator);
            sb.append(str.length() > 40 ? w80.V(str) : str.replaceAll("[^a-zA-Z0-9.]", "_"));
            string = sb.toString();
        }
        File file = new File(filesDir, string);
        c(file);
        this.c = file;
        File file2 = new File(file, "open-sessions");
        c(file2);
        this.d = file2;
        File file3 = new File(file, "reports");
        c(file3);
        this.e = file3;
        File file4 = new File(file, "priority-reports");
        c(file4);
        this.f = file4;
        File file5 = new File(file, "native-reports");
        c(file5);
        this.g = file5;
    }

    public static synchronized void c(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return;
                }
                String str = "Unexpected non-directory file: " + file + "; deleting file and creating new directory.";
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", str, null);
                }
                file.delete();
            }
            if (!file.mkdirs()) {
                Log.e("FirebaseCrashlytics", "Could not create Crashlytics-specific directory: " + file, null);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean d(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                d(file2);
            }
        }
        return file.delete();
    }

    public static List e(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    public void a(String str) {
        File file = new File((File) this.b, str);
        if (file.exists() && d(file)) {
            String str2 = "Deleted previous Crashlytics file system: " + file.getPath();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str2, null);
            }
        }
    }

    public File b(String str, String str2) {
        File file = new File((File) this.d, str);
        file.mkdirs();
        return new File(file, str2);
    }

    public void f(String str) {
        mu0 mu0Var = (mu0) this.e;
        synchronized (mu0Var) {
            try {
                if (((tx1) ((AtomicMarkableReference) mu0Var.b).getReference()).b(str)) {
                    AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) mu0Var.b;
                    atomicMarkableReference.set((tx1) atomicMarkableReference.getReference(), true);
                    y yVar = new y(8, mu0Var);
                    AtomicReference atomicReference = (AtomicReference) mu0Var.c;
                    while (!atomicReference.compareAndSet(null, yVar)) {
                        if (atomicReference.get() != null) {
                            return;
                        }
                    }
                    ((qk0) ((eh) ((q51) mu0Var.d).c).p).a(yVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public q51(String str, q51 q51Var, eh ehVar) {
        this.d = new mu0(this, false);
        this.e = new mu0(this, true);
        this.f = new aa3();
        this.g = new AtomicMarkableReference(null, false);
        this.a = str;
        this.b = new uc2(q51Var);
        this.c = ehVar;
    }
}
