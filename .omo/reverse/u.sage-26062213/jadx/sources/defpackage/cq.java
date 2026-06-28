package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cq extends ud1 implements fd1 {
    public final hd1 p;
    public boolean q;
    public int r;

    public cq(hd1 hd1Var) {
        hd1Var.D();
        vc1 vc1Var = hd1Var.t;
        if (vc1Var != null) {
            vc1Var.o.getClassLoader();
        }
        this.a = new ArrayList();
        this.o = false;
        this.r = -1;
        this.p = hd1Var;
    }

    @Override // defpackage.fd1
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.g) {
            return true;
        }
        hd1 hd1Var = this.p;
        if (hd1Var.d == null) {
            hd1Var.d = new ArrayList();
        }
        hd1Var.d.add(this);
        return true;
    }

    @Override // defpackage.ud1
    public final void c(int i, lc1 lc1Var, String str) {
        String str2 = lc1Var.mPreviousWho;
        if (str2 != null) {
            sd1.c(lc1Var, str2);
        }
        Class<?> cls = lc1Var.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            k21.e(cls.getCanonicalName(), " must be a public static class to be  properly recreated from instance state.", "Fragment ");
            return;
        }
        if (str != null) {
            String str3 = lc1Var.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(lc1Var);
                sb.append(": was ");
                k21.n(di0.y(sb, lc1Var.mTag, " now ", str));
                return;
            }
            lc1Var.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                p61.o("Can't add fragment ", lc1Var, " with tag ", str, " to container view with no id");
                return;
            }
            int i2 = lc1Var.mFragmentId;
            if (i2 != 0 && i2 != i) {
                StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                sb2.append(lc1Var);
                int i3 = lc1Var.mFragmentId;
                sb2.append(": was ");
                sb2.append(i3);
                sb2.append(" now ");
                sb2.append(i);
                throw new IllegalStateException(sb2.toString());
            }
            lc1Var.mFragmentId = i;
            lc1Var.mContainerId = i;
        }
        b(new td1(lc1Var, 1));
        lc1Var.mFragmentManager = this.p;
    }

    public final void d(int i) {
        ArrayList arrayList = this.a;
        if (this.g) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                td1 td1Var = (td1) arrayList.get(i2);
                lc1 lc1Var = td1Var.b;
                if (lc1Var != null) {
                    lc1Var.mBackStackNesting += i;
                    if (hd1.G(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + td1Var.b + " to " + td1Var.b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final int e(boolean z) {
        if (this.q) {
            k21.n("commit already called");
            return 0;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new s72());
            f("  ", printWriter, true);
            printWriter.close();
        }
        this.q = true;
        boolean z2 = this.g;
        hd1 hd1Var = this.p;
        if (z2) {
            this.r = hd1Var.i.getAndIncrement();
        } else {
            this.r = -1;
        }
        hd1Var.v(this, z);
        return this.r;
    }

    public final void f(String str, PrintWriter printWriter, boolean z) {
        String str2;
        ArrayList arrayList = this.a;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.h);
            printWriter.print(" mIndex=");
            printWriter.print(this.r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.q);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.i != 0 || this.j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.j);
            }
            if (this.k != 0 || this.l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.l);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            td1 td1Var = (td1) arrayList.get(i);
            switch (td1Var.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case ConnectionResult.SERVICE_INVALID /* 9 */:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + td1Var.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(td1Var.b);
            if (z) {
                if (td1Var.d != 0 || td1Var.e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(td1Var.d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(td1Var.e));
                }
                if (td1Var.f != 0 || td1Var.g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(td1Var.f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(td1Var.g));
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.r >= 0) {
            sb.append(" #");
            sb.append(this.r);
        }
        if (this.h != null) {
            sb.append(" ");
            sb.append(this.h);
        }
        sb.append("}");
        return sb.toString();
    }
}
