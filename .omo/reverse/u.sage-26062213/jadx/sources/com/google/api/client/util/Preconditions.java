package com.google.api.client.util;

import defpackage.ht4;
import defpackage.k21;
import defpackage.n44;
import defpackage.q73;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static <T> T checkNotNull(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        q73.r(ht4.w(str, objArr));
        return null;
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        k21.n(ht4.w(str, objArr));
    }

    public static void checkState(boolean z) {
        n44.a0(z);
    }

    public static <T> T checkNotNull(T t, Object obj) {
        n44.X(t, obj);
        return t;
    }

    public static void checkState(boolean z, Object obj) {
        n44.b0(z, obj);
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        k21.f(ht4.w(str, objArr));
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static void checkArgument(boolean z) {
        n44.U(z);
    }
}
