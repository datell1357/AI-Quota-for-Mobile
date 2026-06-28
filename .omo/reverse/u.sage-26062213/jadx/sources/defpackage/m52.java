package defpackage;

import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m52 extends j52 {
    public final p22 a;
    public final l52 b;

    public m52(p22 p22Var, bc4 bc4Var) {
        this.a = p22Var;
        bc4Var.getClass();
        tk0 tk0Var = tk0.b;
        tk0Var.getClass();
        qd1 qd1Var = new qd1(bc4Var, l52.d, tk0Var);
        i50 i50VarA = y33.a(l52.class);
        String strB = i50VarA.b();
        if (strB != null) {
            this.b = (l52) qd1Var.B(i50VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        } else {
            k21.f("Local and anonymous classes can not be ViewModels");
            throw null;
        }
    }

    public final void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        l52 l52Var = this.b;
        if (l52Var.b.f() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < l52Var.b.f(); i++) {
                k52 k52Var = (k52) l52Var.b.g(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(l52Var.b.d(i));
                printWriter.print(": ");
                printWriter.println(k52Var.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(k52Var.l);
                k52Var.l.dump(str2.concat("  "), fileDescriptor, printWriter, strArr);
                if (k52Var.n != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(k52Var.n);
                    ft1 ft1Var = k52Var.n;
                    String strConcat = str2.concat("  ");
                    ft1Var.getClass();
                    printWriter.print(strConcat);
                    printWriter.print("mDeliveredData=");
                    printWriter.println(ft1Var.o);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                h52 h52Var = k52Var.l;
                Object obj = k52Var.e;
                printWriter.println(h52Var.dataToString(obj != c52.k ? obj : null));
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(k52Var.c > 0);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Class<?> cls = this.a.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
