package defpackage;

import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface up3 extends hf2, tp3 {
    up3 B(int i, int i2, Object obj, Object obj2);

    up3 L(int i, Object obj);

    NavigableSet R();

    Comparator comparator();

    @Override // defpackage.hf2
    Set entrySet();

    jf2 firstEntry();

    up3 j(int i, Object obj);

    jf2 lastEntry();

    jf2 pollFirstEntry();

    jf2 pollLastEntry();

    up3 z();
}
