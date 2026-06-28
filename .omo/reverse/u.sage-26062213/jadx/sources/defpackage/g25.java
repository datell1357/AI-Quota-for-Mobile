package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g25 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final URL o;
    public final byte[] p;
    public final String q;
    public final Map r;
    public final Object s;
    public final /* synthetic */ ib0 t;

    public g25(i25 i25Var, String str, URL url, byte[] bArr, Map map, d25 d25Var) {
        Objects.requireNonNull(i25Var);
        this.t = i25Var;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(d25Var);
        this.o = url;
        this.p = bArr;
        this.s = d25Var;
        this.q = str;
        this.r = map;
    }

    public void a(int i, IOException iOException, byte[] bArr, Map map) {
        j45 j45Var = ((r45) ((r75) this.t).a).g;
        r45.l(j45Var);
        j45Var.E(new q75(this, i, iOException, bArr, map));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0167 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f9 A[Catch: all -> 0x00fd, LOOP:0: B:40:0x00f3->B:42:0x00f9, LOOP_END, TryCatch #13 {all -> 0x00fd, blocks: (B:39:0x00f1, B:40:0x00f3, B:42:0x00f9, B:45:0x00ff), top: B:188:0x00f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017c  */
    /* JADX WARN: Type inference failed for: r24v0, types: [g25] */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Map] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g25.run():void");
    }

    public g25(r75 r75Var, String str, URL url, byte[] bArr, HashMap map, p75 p75Var) {
        Objects.requireNonNull(r75Var);
        this.t = r75Var;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(p75Var);
        this.o = url;
        this.p = bArr;
        this.s = p75Var;
        this.q = str;
        this.r = map;
    }
}
