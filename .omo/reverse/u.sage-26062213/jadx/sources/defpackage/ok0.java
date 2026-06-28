package defpackage;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ok0 {
    public static final Charset e = Charset.forName("UTF-8");
    public static final int f = 15;
    public static final nk0 g = new nk0();
    public static final yb h = new yb(2);
    public static final zi0 i = new zi0(2);
    public final AtomicInteger a = new AtomicInteger(0);
    public final q51 b;
    public final ed0 c;
    public final aj0 d;

    public ok0(q51 q51Var, ed0 ed0Var, aj0 aj0Var) {
        this.b = q51Var;
        this.c = ed0Var;
        this.d = aj0Var;
    }

    public static void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public static String e(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static void f(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        q51 q51Var = this.b;
        arrayList.addAll(q51.e(((File) q51Var.f).listFiles()));
        arrayList.addAll(q51.e(((File) q51Var.g).listFiles()));
        yb ybVar = h;
        Collections.sort(arrayList, ybVar);
        List listE = q51.e(((File) q51Var.e).listFiles());
        Collections.sort(listE, ybVar);
        arrayList.addAll(listE);
        return arrayList;
    }

    public final NavigableSet c() {
        return new TreeSet(q51.e(((File) this.b.d).list())).descendingSet();
    }

    public final void d(gk0 gk0Var, String str, boolean z) {
        q51 q51Var = this.b;
        int i2 = this.c.e().a.n;
        g.getClass();
        try {
            f(q51Var.b(str, di0.v("event", String.format(Locale.US, "%010d", Integer.valueOf(this.a.getAndIncrement())), z ? "_" : "")), nk0.a.i(gk0Var));
        } catch (IOException e2) {
            Log.w("FirebaseCrashlytics", "Could not persist event for session " + str, e2);
        }
        zi0 zi0Var = new zi0(3);
        q51Var.getClass();
        File file = new File((File) q51Var.d, str);
        file.mkdirs();
        List<File> listE = q51.e(file.listFiles(zi0Var));
        Collections.sort(listE, new yb(3));
        int size = listE.size();
        for (File file2 : listE) {
            if (size <= i2) {
                return;
            }
            q51.d(file2);
            size--;
        }
    }
}
