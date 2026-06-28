package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wd0 extends InterruptedIOException {
    public wd0(IOException iOException, em1 em1Var, InetAddress... inetAddressArr) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Connect to ");
        sb.append(em1Var != null ? em1Var.a() : "remote host");
        if (inetAddressArr.length > 0) {
            str = " " + Arrays.asList(inetAddressArr);
        } else {
            str = "";
        }
        sb.append(str);
        if (iOException.getMessage() != null) {
            str2 = " failed: " + iOException.getMessage();
        } else {
            str2 = " timed out";
        }
        sb.append(str2);
        super(sb.toString());
        initCause(iOException);
    }
}
