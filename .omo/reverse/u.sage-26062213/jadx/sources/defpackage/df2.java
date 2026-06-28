package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class df2 extends ib0 {
    public final kg2 b;
    public final ArrayList c;
    public final kg2 d;
    public final r6 e;

    public df2() {
        super(1);
        this.b = ht4.k();
        this.c = new ArrayList();
        this.d = new kg2();
        sp0 sp0Var = new sp0(13, this);
        wo3.e(wo3.a);
        synchronized (wo3.c) {
            wo3.h = o70.r0(wo3.h, sp0Var);
        }
        this.e = new r6(15, sp0Var);
    }

    @Override // defpackage.ib0
    public final void i(yh3 yh3Var) {
        this.c.add(new bf2(yh3Var));
    }

    @Override // defpackage.ib0
    public final void j() {
        synchronized (this.a) {
            try {
                ArrayList arrayList = this.c;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    cf2 cf2Var = (cf2) arrayList.get(i);
                    if (cf2Var instanceof af2) {
                        ht4.b(this.b, ((af2) cf2Var).a, ((af2) cf2Var).b);
                    } else {
                        if (!(cf2Var instanceof bf2)) {
                            throw new v00(7);
                        }
                        ht4.B(this.b, ((bf2) cf2Var).a);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c.clear();
    }

    @Override // defpackage.ib0
    public final void k() {
        this.e.g();
        this.c.clear();
        this.d.a();
        synchronized (this.a) {
            this.b.a();
        }
    }

    @Override // defpackage.ib0
    public final pe1 o(yh3 yh3Var) {
        kg2 kg2Var = this.d;
        pe1 mVar = (pe1) kg2Var.g(yh3Var);
        if (mVar == null) {
            mVar = new m(14, this, yh3Var);
            int iF = kg2Var.f(yh3Var);
            if (iF < 0) {
                iF = ~iF;
            }
            Object[] objArr = kg2Var.c;
            Object obj = objArr[iF];
            kg2Var.b[iF] = yh3Var;
            objArr[iF] = mVar;
        }
        return mVar;
    }

    @Override // defpackage.ib0
    public final void p(n30 n30Var) {
        this.d.k(n30Var);
        i(n30Var);
        j();
    }
}
