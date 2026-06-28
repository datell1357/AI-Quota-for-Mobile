package defpackage;

import android.text.Editable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lz0 extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile lz0 b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        return cls != null ? new lq3(cls, charSequence) : super.newEditable(charSequence);
    }
}
