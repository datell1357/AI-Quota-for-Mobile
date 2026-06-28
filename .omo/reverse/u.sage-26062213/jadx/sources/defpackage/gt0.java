package defpackage;

import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gt0 extends RuntimeException {
    public final hb0 n;

    public gt0(hb0 hb0Var) {
        this.n = hb0Var;
        if (hb0Var.b) {
            return;
        }
        int[] iArr = {HttpStatusCodes.STATUS_CODE_CREATED, HttpStatusCodes.STATUS_CODE_ACCEPTED, HttpStatusCodes.STATUS_CODE_NO_CONTENT, 206, 207, 125, -127, 126665345, HttpStatusCodes.STATUS_CODE_OK};
        List list = hb0Var.a;
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            jb0 jb0Var = (jb0) list.get(i);
            if (!ji.J(iArr, jb0Var.a)) {
                if (jb0Var.a == 100) {
                    int i3 = i + 2;
                    if (i3 < size && ((jb0) list.get(i3)).a == 1000) {
                        break;
                    } else {
                        o70.v0(arrayList);
                    }
                } else {
                    arrayList.add(jb0Var);
                }
            }
            i = i2;
        }
        int size2 = arrayList.size();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            stackTraceElementArr[i4] = new StackTraceElement("$$compose", di0.q(((jb0) arrayList.get(i4)).a, "m$"), "SourceFile", 1);
        }
        setStackTrace(stackTraceElementArr);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        hb0 hb0Var = this.n;
        if (!hb0Var.b) {
            return "Composition stack when thrown:";
        }
        StringBuilder sb = new StringBuilder("Composition stack when thrown:\n");
        a42 a42VarP = tv4.p();
        List list = hb0Var.a;
        list.getClass();
        qa2 qa2Var = new qa2(list);
        int iA = qa2Var.a();
        for (int i = 0; i < iA; i++) {
            ((jb0) qa2Var.get(i)).getClass();
        }
        a42 a42VarL = tv4.l(a42VarP);
        a42VarL.getClass();
        qa2 qa2Var2 = new qa2(a42VarL);
        int iA2 = qa2Var2.a();
        for (int i2 = 0; i2 < iA2; i2++) {
            String str = (String) qa2Var2.get(i2);
            sb.append("\tat ");
            sb.append(str);
            sb.append('\n');
        }
        return sb.toString();
    }
}
