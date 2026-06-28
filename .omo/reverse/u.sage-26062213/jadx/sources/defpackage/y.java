package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Trace;
import java.nio.MappedByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ y(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    private final void a() {
        mu0 mu0Var = (mu0) this.o;
        Map mapUnmodifiableMap = null;
        ((AtomicReference) mu0Var.c).set(null);
        synchronized (mu0Var) {
            if (((AtomicMarkableReference) mu0Var.b).isMarked()) {
                tx1 tx1Var = (tx1) ((AtomicMarkableReference) mu0Var.b).getReference();
                synchronized (tx1Var) {
                    mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(tx1Var.a));
                }
                AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) mu0Var.b;
                atomicMarkableReference.set((tx1) atomicMarkableReference.getReference(), false);
            }
        }
        if (mapUnmodifiableMap != null) {
            q51 q51Var = (q51) mu0Var.d;
            ((uc2) q51Var.b).h(q51Var.a, mapUnmodifiableMap, mu0Var.a);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                ((a0) this.o).b();
                return;
            case 1:
                v9 v9Var = (v9) this.o;
                Trace.beginSection("measureAndLayout");
                try {
                    v9Var.q.q(true);
                    Trace.endSection();
                    Trace.beginSection("checkForSemanticsChanges");
                    try {
                        v9Var.h();
                        Trace.endSection();
                        v9Var.W = false;
                        return;
                    } finally {
                    }
                } finally {
                }
            case 2:
                r90 r90Var = (r90) this.o;
                Runnable runnable = r90Var.o;
                if (runnable != null) {
                    runnable.run();
                    r90Var.o = null;
                    return;
                }
                return;
            case 3:
                y90.a((y90) this.o);
                return;
            case 4:
                ab1 ab1Var = (ab1) this.o;
                synchronized (ab1Var.d) {
                    try {
                        if (ab1Var.h == null) {
                            return;
                        }
                        try {
                            rb1 rb1VarC = ab1Var.c();
                            int i = rb1VarC.f;
                            if (i == 2) {
                                synchronized (ab1Var.d) {
                                }
                            }
                            if (i != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                            }
                            try {
                                int i2 = p04.a;
                                Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                b21 b21Var = ab1Var.c;
                                Context context = ab1Var.a;
                                b21Var.getClass();
                                rb1[] rb1VarArr = {rb1VarC};
                                nt1 nt1Var = s44.a;
                                Trace.beginSection(ix.Y("TypefaceCompat.createFromFontInfo"));
                                try {
                                    Typeface typefaceP = s44.a.p(context, rb1VarArr, 0);
                                    Trace.endSection();
                                    MappedByteBuffer mappedByteBufferI = is0.I(ab1Var.a, rb1VarC.a);
                                    if (mappedByteBufferI == null || typefaceP == null) {
                                        throw new RuntimeException("Unable to open file.");
                                    }
                                    try {
                                        Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                        qd1 qd1Var = new qd1(typefaceP, ht4.x(mappedByteBufferI));
                                        Trace.endSection();
                                        synchronized (ab1Var.d) {
                                            try {
                                                ix ixVar = ab1Var.h;
                                                if (ixVar != null) {
                                                    ixVar.J(qd1Var);
                                                }
                                            } finally {
                                            }
                                            break;
                                        }
                                        ab1Var.b();
                                        return;
                                    } finally {
                                        int i3 = p04.a;
                                    }
                                } finally {
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        } catch (Throwable th2) {
                            synchronized (ab1Var.d) {
                                try {
                                    ix ixVar2 = ab1Var.h;
                                    if (ixVar2 != null) {
                                        ixVar2.I(th2);
                                    }
                                    ab1Var.b();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            case 5:
                tu1 tu1Var = (tu1) this.o;
                if (tu1Var != null) {
                    tu1Var.j(null);
                    return;
                }
                return;
            case 6:
                bz2 bz2Var = (bz2) this.o;
                r22 r22Var = bz2Var.s;
                if (bz2Var.o == 0) {
                    bz2Var.p = true;
                    r22Var.e(f22.ON_PAUSE);
                }
                if (bz2Var.n == 0 && bz2Var.p) {
                    r22Var.e(f22.ON_STOP);
                    bz2Var.q = true;
                    return;
                }
                return;
            case 7:
                z83.setRippleState$lambda$1((z83) this.o);
                return;
            case 8:
                a();
                return;
            default:
                qd1 qd1Var2 = (qd1) this.o;
                ((ob3) qd1Var2.r).B(new r6(20, qd1Var2));
                return;
        }
    }
}
