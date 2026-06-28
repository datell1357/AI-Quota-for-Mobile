package com.google.api.client.util;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class StringUtils {
    public static final String LINE_SEPARATOR = System.getProperty("line.separator");

    private StringUtils() {
    }

    public static byte[] getBytesUtf8(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static String newStringUtf8(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }
}
