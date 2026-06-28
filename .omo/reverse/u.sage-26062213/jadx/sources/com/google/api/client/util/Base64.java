package com.google.api.client.util;

import defpackage.hr;
import defpackage.ir;
import defpackage.lr;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Base64 {
    private static final lr BASE64_DECODER = lr.a.j();
    private static final lr BASE64URL_DECODER = lr.b.j();

    private Base64() {
    }

    public static byte[] decodeBase64(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BASE64_DECODER.a(str);
        } catch (IllegalArgumentException e) {
            if (e.getCause() instanceof ir) {
                return BASE64URL_DECODER.a(str.trim());
            }
            throw e;
        }
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return StringUtils.getBytesUtf8(encodeBase64String(bArr));
    }

    public static String encodeBase64String(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return lr.a.c(bArr);
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return StringUtils.getBytesUtf8(encodeBase64URLSafeString(bArr));
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        hr hrVar = lr.b;
        Character ch = hrVar.d;
        hr hrVarI = hrVar;
        if (ch != null) {
            hrVarI = hrVar.i(hrVar.c);
        }
        return hrVarI.c(bArr);
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return decodeBase64(StringUtils.newStringUtf8(bArr));
    }
}
