package defpackage;

import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.common.ConnectionResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ug4 {
    public static final LinkedHashSet a(byte[] bArr) throws IOException {
        bArr.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int i = objectInputStream.readInt();
                    for (int i2 = 0; i2 < i; i2++) {
                        Uri uri = Uri.parse(objectInputStream.readUTF());
                        boolean z = objectInputStream.readBoolean();
                        uri.getClass();
                        linkedHashSet.add(new kf0(z, uri));
                    }
                    objectInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byteArrayInputStream.close();
            return linkedHashSet;
        } finally {
        }
    }

    public static final byte[] b(tl2 tl2Var) throws IOException {
        int[] iArrB0;
        int[] iArrB02;
        tl2Var.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            return new byte[0];
        }
        NetworkRequest networkRequest = (NetworkRequest) tl2Var.a;
        if (networkRequest == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                if (i >= 31) {
                    iArrB0 = networkRequest.getTransportTypes();
                    iArrB0.getClass();
                } else {
                    int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < 10; i2++) {
                        int i3 = iArr[i2];
                        if (networkRequest.hasTransport(i3)) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    iArrB0 = o70.B0(arrayList);
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    iArrB02 = networkRequest.getCapabilities();
                    iArrB02.getClass();
                } else {
                    int[] iArr2 = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
                    ArrayList arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < 30; i4++) {
                        int i5 = iArr2[i4];
                        if (networkRequest.hasCapability(i5)) {
                            arrayList2.add(Integer.valueOf(i5));
                        }
                    }
                    iArrB02 = o70.B0(arrayList2);
                }
                objectOutputStream.writeInt(iArrB0.length);
                for (int i6 : iArrB0) {
                    objectOutputStream.writeInt(i6);
                }
                objectOutputStream.writeInt(iArrB02.length);
                for (int i7 : iArrB02) {
                    objectOutputStream.writeInt(i7);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final jq c(int i) {
        if (i == 0) {
            return jq.n;
        }
        if (i == 1) {
            return jq.o;
        }
        k21.f(xw1.q("Could not convert ", i, " to BackoffPolicy"));
        return null;
    }

    public static final zl2 d(int i) {
        if (i == 0) {
            return zl2.n;
        }
        if (i == 1) {
            return zl2.o;
        }
        if (i == 2) {
            return zl2.p;
        }
        if (i == 3) {
            return zl2.q;
        }
        if (i == 4) {
            return zl2.r;
        }
        if (Build.VERSION.SDK_INT >= 30 && i == 5) {
            return zl2.s;
        }
        k21.f(xw1.q("Could not convert ", i, " to NetworkType"));
        return null;
    }

    public static final jr2 e(int i) {
        if (i == 0) {
            return jr2.n;
        }
        if (i == 1) {
            return jr2.o;
        }
        k21.f(xw1.q("Could not convert ", i, " to OutOfQuotaPolicy"));
        return null;
    }

    public static final cg4 f(int i) {
        if (i == 0) {
            return cg4.n;
        }
        if (i == 1) {
            return cg4.o;
        }
        if (i == 2) {
            return cg4.p;
        }
        if (i == 3) {
            return cg4.q;
        }
        if (i == 4) {
            return cg4.r;
        }
        if (i == 5) {
            return cg4.s;
        }
        k21.f(xw1.q("Could not convert ", i, " to State"));
        return null;
    }

    public static final int g(zl2 zl2Var) {
        zl2Var.getClass();
        int iOrdinal = zl2Var.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                i = 3;
                if (iOrdinal != 3) {
                    i = 4;
                    if (iOrdinal != 4) {
                        if (Build.VERSION.SDK_INT >= 30 && zl2Var == zl2.s) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + zl2Var + " to int");
                    }
                }
            }
        }
        return i;
    }

    public static final byte[] h(Set set) throws IOException {
        set.getClass();
        if (set.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(set.size());
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    kf0 kf0Var = (kf0) it.next();
                    objectOutputStream.writeUTF(kf0Var.a.toString());
                    objectOutputStream.writeBoolean(kf0Var.b);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final int i(cg4 cg4Var) {
        cg4Var.getClass();
        int iOrdinal = cg4Var.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                i = 3;
                if (iOrdinal != 3) {
                    i = 4;
                    if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            return 5;
                        }
                        p61.x();
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static final tl2 j(byte[] bArr) throws IOException {
        bArr.getClass();
        if (Build.VERSION.SDK_INT < 28 || bArr.length == 0) {
            return new tl2(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int i = objectInputStream.readInt();
                int[] iArr = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = objectInputStream.readInt();
                }
                int i3 = objectInputStream.readInt();
                int[] iArr2 = new int[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    iArr2[i4] = objectInputStream.readInt();
                }
                tl2 tl2VarV = c75.v(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return tl2VarV;
            } finally {
            }
        } finally {
        }
    }

    public static String k(iy4 iy4Var) {
        StringBuilder sb = new StringBuilder(iy4Var.d());
        for (int i = 0; i < iy4Var.d(); i++) {
            byte bA = iy4Var.a(i);
            if (bA == 34) {
                sb.append("\\\"");
            } else if (bA == 39) {
                sb.append("\\'");
            } else if (bA != 92) {
                switch (bA) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bA < 32 || bA > 126) {
                            sb.append('\\');
                            sb.append((char) (((bA >>> 6) & 3) + 48));
                            sb.append((char) (((bA >>> 3) & 7) + 48));
                            sb.append((char) ((bA & 7) + 48));
                        } else {
                            sb.append((char) bA);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
