package com.google.api.client.util;

import defpackage.ev1;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class Joiner {
    private final ev1 wrapped;

    private Joiner(ev1 ev1Var) {
        this.wrapped = ev1Var;
    }

    public static Joiner on(char c) {
        return new Joiner(new ev1(String.valueOf(c)));
    }

    public final String join(Iterable<?> iterable) {
        ev1 ev1Var = this.wrapped;
        ev1Var.getClass();
        Iterator<?> it = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        ev1Var.a(sb, it);
        return sb.toString();
    }
}
