package defpackage;

import com.google.api.client.http.HttpHeaders;
import java.nio.ByteBuffer;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y60 extends ex3 {
    static {
        Collections.singletonList("X-Cloud-Trace-Context");
        new v04(v04.a);
    }

    @Override // defpackage.ex3
    public final void a(gq3 gq3Var, HttpHeaders httpHeaders, dx3 dx3Var) {
        String str;
        n44.X(gq3Var, "spanContext");
        n44.X(dx3Var, "setter");
        n44.X(httpHeaders, "carrier");
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[32];
        dw.b(cArr, 0);
        dw.b(cArr, 16);
        sb.append(new String(cArr));
        sb.append('/');
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.put(new byte[]{0, 0, 0, 0, 0, 0, 0, 0});
        long j = byteBufferAllocate.getLong(0);
        if (j == 0) {
            str = "0";
        } else if (j > 0) {
            str = Long.toString(j, 10);
        } else {
            char[] cArr2 = new char[64];
            long j2 = (j >>> 1) / 5;
            int i = 63;
            cArr2[63] = Character.forDigit((int) (j - (j2 * 10)), 10);
            for (long j3 = 0; j2 > j3; j3 = 0) {
                i--;
                cArr2[i] = Character.forDigit((int) (j2 % 10), 10);
                j2 /= 10;
            }
            str = new String(cArr2, i, 64 - i);
        }
        dx3Var.put(httpHeaders, "X-Cloud-Trace-Context", di0.y(sb, str, ";o=", "0"));
    }
}
