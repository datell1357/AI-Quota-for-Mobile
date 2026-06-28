package defpackage;

import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pl4 extends v43 {
    public static final Set f;
    public static final fh5 g;
    public static final nl4 h;
    public final String b;
    public final Level c;
    public final Set d;
    public final fh5 e;

    static {
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(fg5.a, wg5.a, xg5.a)));
        f = setUnmodifiableSet;
        fh5 fh5Var = new fh5(qn0.M(setUnmodifiableSet));
        g = fh5Var;
        h = new nl4(Level.ALL, setUnmodifiableSet, fh5Var);
    }

    public /* synthetic */ pl4(String str, Level level, Set set, fh5 fh5Var) {
        super(str);
        this.b = il4.a(str);
        this.c = level;
        this.d = set;
        this.e = fh5Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x025f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(defpackage.cg5 r31, java.lang.String r32, java.util.logging.Level r33, java.util.Set r34, defpackage.fh5 r35) {
        /*
            Method dump skipped, instruction units count: 1193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pl4.d(cg5, java.lang.String, java.util.logging.Level, java.util.Set, fh5):void");
    }

    @Override // defpackage.v43
    public final boolean a(Level level) {
        int iC = il4.c(level);
        return Log.isLoggable(this.b, iC) || Log.isLoggable("all", iC);
    }

    @Override // defpackage.v43
    public final void b(cg5 cg5Var) {
        d(cg5Var, this.b, this.c, this.d, this.e);
    }
}
