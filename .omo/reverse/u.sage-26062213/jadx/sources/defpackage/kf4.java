package defpackage;

import java.io.ByteArrayInputStream;
import org.apache.commons.logging.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kf4 {
    public final Log a;
    public final String b;

    public kf4(Log log, String str) {
        this.a = log;
        this.b = str;
    }

    public final boolean a() {
        return this.a.isDebugEnabled();
    }

    public final void b(String str) {
        byte[] bytes = str.getBytes();
        w80.L(bytes, "Input");
        e("<< ", new ByteArrayInputStream(bytes));
    }

    public final void c(String str) {
        d(str.getBytes());
    }

    public final void d(byte[] bArr) {
        w80.L(bArr, "Output");
        e(">> ", new ByteArrayInputStream(bArr));
    }

    public final void e(String str, ByteArrayInputStream byteArrayInputStream) {
        String str2;
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = byteArrayInputStream.read();
            str2 = this.b;
            if (i == -1) {
                break;
            }
            if (i == 13) {
                sb.append("[\\r]");
            } else if (i == 10) {
                sb.append("[\\n]\"");
                sb.insert(0, "\"");
                sb.insert(0, str);
                this.a.debug(str2 + " " + sb.toString());
                sb.setLength(0);
            } else if (i < 32 || i > 127) {
                sb.append("[0x");
                sb.append(Integer.toHexString(i));
                sb.append("]");
            } else {
                sb.append((char) i);
            }
        }
        if (sb.length() > 0) {
            sb.append('\"');
            sb.insert(0, '\"');
            sb.insert(0, str);
            this.a.debug(str2 + " " + sb.toString());
        }
    }

    public kf4(Log log) {
        this(log, "");
    }
}
