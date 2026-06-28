package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class dx1 extends r51 {
    @Override // defpackage.r51
    public final List F(bt2 bt2Var) throws IOException {
        File file = bt2Var.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                q73.q(bt2Var, "failed to list ");
                return null;
            }
            mk0.l(bt2Var, "no such file: ");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            str.getClass();
            arrayList.add(bt2Var.e(str));
        }
        r70.b0(arrayList);
        return arrayList;
    }

    @Override // defpackage.r51
    public i51 L(bt2 bt2Var) {
        bt2Var.getClass();
        File file = bt2Var.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (!zIsFile && !zIsDirectory && jLastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new i51(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null);
    }

    @Override // defpackage.r51
    public final cx1 N(bt2 bt2Var) {
        return new cx1(new RandomAccessFile(bt2Var.toFile(), "r"));
    }

    @Override // defpackage.r51
    public final kn3 R(bt2 bt2Var, boolean z) throws IOException {
        bt2Var.getClass();
        if (!z || !B(bt2Var)) {
            return new nr2(new FileOutputStream(bt2Var.toFile(), false), new mz3());
        }
        throw new IOException(bt2Var + " already exists.");
    }

    @Override // defpackage.r51
    public final yp3 V(bt2 bt2Var) {
        bt2Var.getClass();
        return new mr1(new FileInputStream(bt2Var.toFile()), mz3.d);
    }

    @Override // defpackage.r51
    public final kn3 b(bt2 bt2Var) {
        bt2Var.getClass();
        return new nr2(new FileOutputStream(bt2Var.toFile(), true), new mz3());
    }

    @Override // defpackage.r51
    public void j(bt2 bt2Var, bt2 bt2Var2) throws IOException {
        bt2Var.getClass();
        bt2Var2.getClass();
        if (bt2Var.toFile().renameTo(bt2Var2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + bt2Var + " to " + bt2Var2);
    }

    @Override // defpackage.r51
    public final void r(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        if (bt2Var.toFile().mkdir()) {
            return;
        }
        i51 i51VarL = L(bt2Var);
        if (i51VarL == null || !i51VarL.b) {
            q73.q(bt2Var, "failed to create directory: ");
        }
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }

    @Override // defpackage.r51
    public final void z(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = bt2Var.toFile();
        if (file.delete() || !file.exists()) {
            return;
        }
        q73.q(bt2Var, "failed to delete ");
    }
}
