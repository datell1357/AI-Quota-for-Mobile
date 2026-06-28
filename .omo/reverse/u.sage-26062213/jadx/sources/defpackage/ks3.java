package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ks3 {
    public static final List b;
    public static final ks3 c;
    public static final ks3 d;
    public static final ks3 e;
    public static final ks3 f;
    public static final ks3 g;
    public static final ks3 h;
    public static final ks3 i;
    public static final ks3 j;
    public final int a;

    static {
        TreeMap treeMap = new TreeMap();
        for (int i2 : di0.J(17)) {
            ks3 ks3Var = (ks3) treeMap.put(Integer.valueOf(di0.F(i2)), new ks3(i2));
            if (ks3Var != null) {
                q73.n("Code value duplication between ", xw1.z(ks3Var.a), " & ", xw1.z(i2));
                return;
            }
        }
        b = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        c = xw1.h(1);
        xw1.h(2);
        d = xw1.h(3);
        e = xw1.h(4);
        xw1.h(5);
        f = xw1.h(6);
        xw1.h(7);
        g = xw1.h(8);
        h = xw1.h(17);
        xw1.h(9);
        i = xw1.h(10);
        xw1.h(11);
        xw1.h(12);
        xw1.h(13);
        xw1.h(14);
        j = xw1.h(15);
        xw1.h(16);
    }

    public ks3(int i2) {
        if (i2 == 0) {
            throw new NullPointerException(String.valueOf("canonicalCode"));
        }
        this.a = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ks3) && this.a == ((ks3) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{di0.f(this.a), null});
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Status{canonicalCode=");
        switch (this.a) {
            case 1:
                str = "OK";
                break;
            case 2:
                str = "CANCELLED";
                break;
            case 3:
                str = "UNKNOWN";
                break;
            case 4:
                str = "INVALID_ARGUMENT";
                break;
            case 5:
                str = "DEADLINE_EXCEEDED";
                break;
            case 6:
                str = "NOT_FOUND";
                break;
            case 7:
                str = "ALREADY_EXISTS";
                break;
            case 8:
                str = "PERMISSION_DENIED";
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                str = "RESOURCE_EXHAUSTED";
                break;
            case 10:
                str = "FAILED_PRECONDITION";
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                str = "ABORTED";
                break;
            case 12:
                str = "OUT_OF_RANGE";
                break;
            case 13:
                str = "UNIMPLEMENTED";
                break;
            case 14:
                str = "INTERNAL";
                break;
            case 15:
                str = "UNAVAILABLE";
                break;
            case 16:
                str = "DATA_LOSS";
                break;
            case 17:
                str = "UNAUTHENTICATED";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append(", description=null}");
        return sb.toString();
    }
}
