package defpackage;

import android.view.autofill.AutofillId;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v8 implements ip {
    public final q9 a;
    public final lp b;
    public final AutofillId c;

    public v8(q9 q9Var, lp lpVar) {
        this.a = q9Var;
        this.b = lpVar;
        q9Var.setImportantForAutofill(1);
        i3 i3VarC = gg4.C(q9Var);
        AutofillId autofillIdF = i3VarC != null ? y2.f(i3VarC.a) : null;
        if (autofillIdF == null) {
            throw di0.m("Required value was null.");
        }
        this.c = autofillIdF;
    }
}
