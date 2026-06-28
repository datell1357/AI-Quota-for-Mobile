package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t81 extends bv3 implements ff1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ b81 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f332u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t81(dh0 dh0Var, gf1 gf1Var) {
        super(3, dh0Var);
        this.r = 1;
        this.v = gf1Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj4 = this.v;
        b81 b81Var = (b81) obj;
        switch (i) {
            case 0:
                t81 t81Var = new t81((df1) obj4, (dh0) obj3, 0);
                t81Var.t = b81Var;
                t81Var.f332u = obj2;
                return t81Var.q(t64Var);
            case 1:
                t81 t81Var2 = new t81((dh0) obj3, (gf1) obj4);
                t81Var2.t = b81Var;
                t81Var2.f332u = (Object[]) obj2;
                return t81Var2.q(t64Var);
            case 2:
                t81 t81Var3 = new t81((ff1) obj4, (dh0) obj3, 2);
                t81Var3.t = b81Var;
                t81Var3.f332u = (Object[]) obj2;
                return t81Var3.q(t64Var);
            default:
                t81 t81Var4 = new t81((km3) obj4, (dh0) obj3, 3);
                t81Var4.t = b81Var;
                t81Var4.f332u = (Throwable) obj2;
                return t81Var4.q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        b81 b81Var;
        b81 b81Var2;
        b81 b81Var3;
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.v;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    b81Var = this.t;
                    Object obj3 = this.f332u;
                    this.t = b81Var;
                    this.s = 1;
                    obj = ((df1) obj2).f(obj3, this);
                    if (obj != ri0Var) {
                    }
                } else if (i2 == 1) {
                    b81Var = this.t;
                    gg4.T(obj);
                } else if (i2 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                this.t = null;
                this.s = 2;
                if (b81Var.m(obj, this) != ri0Var) {
                }
                break;
            case 1:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    b81Var2 = this.t;
                    Object[] objArr = (Object[]) this.f332u;
                    Object obj4 = objArr[0];
                    Object obj5 = objArr[1];
                    Object obj6 = objArr[2];
                    this.t = b81Var2;
                    this.s = 1;
                    obj = ((gf1) obj2).n(obj4, obj5, obj6, this);
                    if (obj != ri0Var) {
                    }
                } else if (i3 == 1) {
                    b81Var2 = this.t;
                    gg4.T(obj);
                } else if (i3 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                this.t = null;
                this.s = 2;
                if (b81Var2.m(obj, this) != ri0Var) {
                }
                break;
            case 2:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    b81Var3 = this.t;
                    Object[] objArr2 = (Object[]) this.f332u;
                    Object obj7 = objArr2[0];
                    Object obj8 = objArr2[1];
                    this.t = b81Var3;
                    this.s = 1;
                    obj = ((ff1) obj2).d(obj7, obj8, this);
                    if (obj != ri0Var) {
                    }
                } else if (i4 == 1) {
                    b81Var3 = this.t;
                    gg4.T(obj);
                } else if (i4 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                this.t = null;
                this.s = 2;
                if (b81Var3.m(obj, this) != ri0Var) {
                }
                break;
            default:
                int i5 = this.s;
                if (i5 == 0) {
                    gg4.T(obj);
                    b81 b81Var4 = this.t;
                    Throwable th = (Throwable) this.f332u;
                    lj3 lj3VarA = ((km3) obj2).b.a(null);
                    gj3 gj3Var = new gj3(lj3VarA, null, null);
                    Log.d("FirebaseSessions", "Init session datastore failed with exception message: " + th.getMessage() + ". Emit fallback session " + lj3VarA.a);
                    this.t = null;
                    this.s = 1;
                    if (b81Var4.m(gj3Var, this) == ri0Var) {
                    }
                } else if (i5 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t81(Object obj, dh0 dh0Var, int i) {
        super(3, dh0Var);
        this.r = i;
        this.v = obj;
    }
}
