package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ed3 implements df1 {
    public final /* synthetic */ int n;

    public /* synthetic */ ed3(int i) {
        this.n = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        hf hfVar;
        Object objA;
        switch (this.n) {
            case 0:
                go2 go2Var = (go2) obj2;
                return go2Var != null ? go2.b(go2Var.a, 9205357640488583168L) : false ? Boolean.FALSE : tv4.j(Float.valueOf(Float.intBitsToFloat((int) (go2Var.a >> 32))), Float.valueOf(Float.intBitsToFloat((int) (go2Var.a & 4294967295L))));
            case 1:
                ec3 ec3Var = (ec3) obj;
                ef efVar = (ef) obj2;
                Object obj3 = efVar.a;
                if (obj3 instanceof qs2) {
                    hfVar = hf.n;
                } else if (obj3 instanceof iq3) {
                    hfVar = hf.o;
                } else if (obj3 instanceof wa4) {
                    hfVar = hf.p;
                } else if (obj3 instanceof b84) {
                    hfVar = hf.q;
                } else if (obj3 instanceof q32) {
                    hfVar = hf.r;
                } else if (obj3 instanceof p32) {
                    hfVar = hf.s;
                } else {
                    if (!(obj3 instanceof ws3)) {
                        p61.b();
                        return null;
                    }
                    hfVar = hf.t;
                }
                switch (hfVar.ordinal()) {
                    case 0:
                        obj3.getClass();
                        objA = id3.a((qs2) obj3, id3.g, ec3Var);
                        break;
                    case 1:
                        obj3.getClass();
                        objA = id3.a((iq3) obj3, id3.h, ec3Var);
                        break;
                    case 2:
                        obj3.getClass();
                        objA = id3.a((wa4) obj3, id3.c, ec3Var);
                        break;
                    case 3:
                        obj3.getClass();
                        objA = id3.a((b84) obj3, id3.d, ec3Var);
                        break;
                    case 4:
                        obj3.getClass();
                        objA = id3.a((q32) obj3, id3.e, ec3Var);
                        break;
                    case 5:
                        obj3.getClass();
                        objA = id3.a((p32) obj3, id3.f, ec3Var);
                        break;
                    case 6:
                        obj3.getClass();
                        objA = ((ws3) obj3).a;
                        break;
                    default:
                        p61.x();
                        return null;
                }
                return tv4.j(hfVar, objA, Integer.valueOf(efVar.b), Integer.valueOf(efVar.c), efVar.d);
            case 2:
                ec3 ec3Var2 = (ec3) obj;
                List list = ((e72) obj2).n;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(id3.a((d72) list.get(i), id3.z, ec3Var2));
                }
                return arrayList;
            case 3:
                return ((d72) obj2).a.toLanguageTag();
            case 4:
                ec3 ec3Var3 = (ec3) obj;
                i32 i32Var = (i32) obj2;
                return tv4.j(id3.a(new f32(i32Var.a), id3.B, ec3Var3), id3.a(new h32(i32Var.b), id3.C, ec3Var3), id3.a(new g32(i32Var.c), id3.D, ec3Var3));
            case 5:
                return Float.valueOf(((f32) obj2).a);
            case 6:
                return Integer.valueOf(((h32) obj2).a);
            case 7:
                return Integer.valueOf(((g32) obj2).a);
            case 8:
                return ((wa4) obj2).a;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ec3 ec3Var4 = (ec3) obj;
                qs2 qs2Var = (qs2) obj2;
                Object objA2 = id3.a(new vw3(qs2Var.a), id3.q, ec3Var4);
                Object objA3 = id3.a(new ax3(qs2Var.b), id3.r, ec3Var4);
                Object objA4 = id3.a(new cy3(qs2Var.c), id3.v, ec3Var4);
                gx3 gx3Var = qs2Var.d;
                gx3 gx3Var2 = gx3.c;
                Object objA5 = id3.a(gx3Var, id3.l, ec3Var4);
                Object objA6 = id3.a(qs2Var.e, kd3.a, ec3Var4);
                i32 i32Var2 = qs2Var.f;
                i32 i32Var3 = i32.d;
                return tv4.j(objA2, objA3, objA4, objA5, objA6, id3.a(i32Var2, id3.A, ec3Var4), id3.a(new d32(qs2Var.g), kd3.c, ec3Var4), id3.a(new gn1(qs2Var.h), id3.s, ec3Var4), id3.a(qs2Var.i, kd3.d, ec3Var4));
            case 10:
                return ((b84) obj2).a;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                ec3 ec3Var5 = (ec3) obj;
                iq3 iq3Var = (iq3) obj2;
                t70 t70Var = new t70(iq3Var.a.d());
                hd3 hd3Var = id3.p;
                Object objA7 = id3.a(t70Var, hd3Var, ec3Var5);
                cy3 cy3Var = new cy3(iq3Var.b);
                hd3 hd3Var2 = id3.v;
                Object objA8 = id3.a(cy3Var, hd3Var2, ec3Var5);
                pb1 pb1Var = iq3Var.c;
                pb1 pb1Var2 = pb1.o;
                Object objA9 = id3.a(pb1Var, id3.m, ec3Var5);
                Object objA10 = id3.a(iq3Var.d, id3.t, ec3Var5);
                Object objA11 = id3.a(iq3Var.e, id3.f136u, ec3Var5);
                String str = iq3Var.g;
                Object objA12 = id3.a(new cy3(iq3Var.h), hd3Var2, ec3Var5);
                Object objA13 = id3.a(iq3Var.i, id3.n, ec3Var5);
                Object objA14 = id3.a(iq3Var.j, id3.k, ec3Var5);
                e72 e72Var = iq3Var.k;
                e72 e72Var2 = e72.p;
                Object objA15 = id3.a(e72Var, id3.y, ec3Var5);
                Object objA16 = id3.a(new t70(iq3Var.l), hd3Var, ec3Var5);
                Object objA17 = id3.a(iq3Var.m, id3.j, ec3Var5);
                hl3 hl3Var = iq3Var.n;
                hl3 hl3Var2 = hl3.d;
                return tv4.j(objA7, objA8, objA9, objA10, objA11, -1, str, objA12, objA13, objA14, objA15, objA16, objA17, id3.a(hl3Var, id3.o, ec3Var5));
            case 12:
                ec3 ec3Var6 = (ec3) obj;
                qx3 qx3Var = (qx3) obj2;
                iq3 iq3Var2 = qx3Var.a;
                xh1 xh1Var = id3.h;
                return tv4.j(id3.a(iq3Var2, xh1Var, ec3Var6), id3.a(qx3Var.b, xh1Var, ec3Var6), id3.a(qx3Var.c, xh1Var, ec3Var6), id3.a(qx3Var.d, xh1Var, ec3Var6));
            case 13:
                mv2 mv2Var = (mv2) obj2;
                Boolean boolValueOf = Boolean.valueOf(mv2Var.a);
                xh1 xh1Var2 = id3.a;
                return tv4.j(boolValueOf, id3.a(new uz0(mv2Var.b), kd3.b, (ec3) obj));
            case 14:
                return Integer.valueOf(((uz0) obj2).a);
            case 15:
                return Integer.valueOf(((d32) obj2).a);
            case 16:
                sx3 sx3Var = (sx3) obj2;
                return tv4.j(id3.a(new rx3(sx3Var.a), kd3.e, (ec3) obj), Boolean.valueOf(sx3Var.b));
            case 17:
                return Integer.valueOf(((rx3) obj2).a);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return Integer.valueOf(((lf3) obj2).a.g());
            case 19:
                fi0 fi0Var = (fi0) obj2;
                if (!(fi0Var instanceof ly3)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int iIntValue = num != null ? num.intValue() : 1;
                return iIntValue == 0 ? fi0Var : Integer.valueOf(iIntValue + 1);
            case 20:
                ly3 ly3Var = (ly3) obj;
                fi0 fi0Var2 = (fi0) obj2;
                if (ly3Var != null) {
                    return ly3Var;
                }
                if (fi0Var2 instanceof ly3) {
                    return (ly3) fi0Var2;
                }
                return null;
            default:
                sy3 sy3Var = (sy3) obj;
                fi0 fi0Var3 = (fi0) obj2;
                if (fi0Var3 instanceof ly3) {
                    ly3 ly3Var2 = (ly3) fi0Var3;
                    hi0 hi0Var = sy3Var.a;
                    Object objC = ly3Var2.c();
                    Object[] objArr = sy3Var.b;
                    int i2 = sy3Var.d;
                    objArr[i2] = objC;
                    ly3[] ly3VarArr = sy3Var.c;
                    sy3Var.d = i2 + 1;
                    ly3VarArr[i2] = ly3Var2;
                }
                return sy3Var;
        }
    }
}
