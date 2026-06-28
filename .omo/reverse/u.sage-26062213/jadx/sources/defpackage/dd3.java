package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dd3 implements pe1 {
    public final /* synthetic */ int n;

    public /* synthetic */ dd3(int i) {
        this.n = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        ef efVar;
        int i = 0;
        uz0Var = null;
        uz0 uz0Var = null;
        hl3Var = null;
        hl3 hl3Var = null;
        sx3Var = null;
        sx3 sx3Var = null;
        p32Var = null;
        p32 p32Var = null;
        q32Var = null;
        q32 q32Var = null;
        b84Var = null;
        b84 b84Var = null;
        wa4Var = null;
        wa4 wa4Var = null;
        iq3Var = null;
        iq3 iq3Var = null;
        qs2Var = null;
        qs2 qs2Var = null;
        qx3Var = null;
        qx3 qx3Var = null;
        qx3Var = null;
        qx3 qx3Var2 = null;
        switch (this.n) {
            case 0:
                obj.getClass();
                return new yw3(((Integer) obj).intValue());
            case 1:
                obj.getClass();
                List list = (List) obj;
                return new fx3(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
            case 2:
                obj.getClass();
                List list2 = (List) obj;
                Object obj2 = list2.get(0);
                dy3[] dy3VarArr = cy3.b;
                pe1 pe1Var = id3.v.o;
                Boolean bool = Boolean.FALSE;
                nt1.g(obj2, bool);
                cy3 cy3Var = obj2 != null ? (cy3) pe1Var.k(obj2) : null;
                cy3Var.getClass();
                long j = cy3Var.a;
                Object obj3 = list2.get(1);
                nt1.g(obj3, bool);
                cy3 cy3Var2 = obj3 != null ? (cy3) pe1Var.k(obj3) : null;
                cy3Var2.getClass();
                return new gx3(j, cy3Var2.a);
            case 3:
                obj.getClass();
                return new pb1(((Integer) obj).intValue());
            case 4:
                obj.getClass();
                return new eu(((Float) obj).floatValue());
            case 5:
                obj.getClass();
                List list3 = (List) obj;
                Object obj4 = list3.get(0);
                Integer num = obj4 != null ? (Integer) obj4 : null;
                num.getClass();
                int iIntValue = num.intValue();
                Object obj5 = list3.get(1);
                Integer num2 = obj5 != null ? (Integer) obj5 : null;
                num2.getClass();
                return new tx3(bi4.g(iIntValue, num2.intValue()));
            case 6:
                obj.getClass();
                List list4 = (List) obj;
                Object obj6 = list4.get(0);
                int i2 = t70.g;
                Boolean bool2 = Boolean.FALSE;
                nt1.g(obj6, bool2);
                t70 t70Var = obj6 != null ? nt1.g(obj6, Boolean.FALSE) ? new t70(t70.f) : new t70(c75.b(((Integer) obj6).intValue())) : null;
                t70Var.getClass();
                long j2 = t70Var.a;
                Object obj7 = list4.get(1);
                hd3 hd3Var = id3.x;
                nt1.g(obj7, bool2);
                go2 go2Var = obj7 != null ? (go2) hd3Var.o.k(obj7) : null;
                go2Var.getClass();
                long j3 = go2Var.a;
                Object obj8 = list4.get(2);
                Float f = obj8 != null ? (Float) obj8 : null;
                f.getClass();
                return new hl3(j2, j3, f.floatValue());
            case 7:
                obj.getClass();
                return new vw3(((Integer) obj).intValue());
            case 8:
                obj.getClass();
                List list5 = (List) obj;
                Object obj9 = list5.get(0);
                String str = obj9 != null ? (String) obj9 : null;
                str.getClass();
                Object obj10 = list5.get(1);
                xh1 xh1Var = id3.i;
                if (!nt1.g(obj10, Boolean.FALSE) && obj10 != null) {
                    qx3Var2 = (qx3) ((pe1) xh1Var.o).k(obj10);
                }
                return new q32(str, qx3Var2);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                obj.getClass();
                return new ax3(((Integer) obj).intValue());
            case 10:
                obj.getClass();
                return new gn1(((Integer) obj).intValue());
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                obj.getClass();
                List list6 = (List) obj;
                ArrayList arrayList = new ArrayList(list6.size());
                int size = list6.size();
                while (i < size) {
                    Object obj11 = list6.get(i);
                    ef efVar2 = (nt1.g(obj11, Boolean.FALSE) || obj11 == null) ? null : (ef) ((pe1) id3.b.o).k(obj11);
                    efVar2.getClass();
                    arrayList.add(efVar2);
                    i++;
                }
                return arrayList;
            case 12:
                obj.getClass();
                return new nb1(((Integer) obj).intValue());
            case 13:
                obj.getClass();
                return new ob1(((Integer) obj).intValue());
            case 14:
                Boolean bool3 = Boolean.FALSE;
                if (nt1.g(obj, bool3)) {
                    return new cy3(cy3.c);
                }
                obj.getClass();
                List list7 = (List) obj;
                Object obj12 = list7.get(0);
                Float f2 = obj12 != null ? (Float) obj12 : null;
                f2.getClass();
                float fFloatValue = f2.floatValue();
                Object obj13 = list7.get(1);
                hd3 hd3Var2 = id3.w;
                nt1.g(obj13, bool3);
                dy3 dy3Var = obj13 != null ? (dy3) hd3Var2.o.k(obj13) : null;
                dy3Var.getClass();
                return new cy3(on4.F(fFloatValue, dy3Var.a));
            case 15:
                return nt1.g(obj, 0) ? new dy3(8589934592L) : nt1.g(obj, 1) ? new dy3(4294967296L) : new dy3(0L);
            case 16:
                if (nt1.g(obj, Boolean.FALSE)) {
                    return new go2(9205357640488583168L);
                }
                obj.getClass();
                List list8 = (List) obj;
                Object obj14 = list8.get(0);
                Float f3 = obj14 != null ? (Float) obj14 : null;
                f3.getClass();
                float fFloatValue2 = f3.floatValue();
                Object obj15 = list8.get(1);
                Float f4 = obj15 != null ? (Float) obj15 : null;
                f4.getClass();
                return new go2((((long) Float.floatToRawIntBits(fFloatValue2)) << 32) | (((long) Float.floatToRawIntBits(f4.floatValue())) & 4294967295L));
            case 17:
                obj.getClass();
                List list9 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list9.size());
                int size2 = list9.size();
                while (i < size2) {
                    Object obj16 = list9.get(i);
                    d72 d72Var = (nt1.g(obj16, Boolean.FALSE) || obj16 == null) ? null : (d72) ((pe1) id3.z.o).k(obj16);
                    d72Var.getClass();
                    arrayList2.add(d72Var);
                    i++;
                }
                return new e72(arrayList2);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                obj.getClass();
                String str2 = (String) obj;
                Locale localeForLanguageTag = Locale.forLanguageTag(str2);
                if (nt1.g(localeForLanguageTag.toLanguageTag(), "und")) {
                    System.err.println("The language tag " + str2 + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
                }
                return new d72(localeForLanguageTag);
            case 19:
                obj.getClass();
                List list10 = (List) obj;
                Object obj17 = list10.get(0);
                String str3 = obj17 != null ? (String) obj17 : null;
                str3.getClass();
                Object obj18 = list10.get(1);
                xh1 xh1Var2 = id3.i;
                if (!nt1.g(obj18, Boolean.FALSE) && obj18 != null) {
                    qx3Var = (qx3) ((pe1) xh1Var2.o).k(obj18);
                }
                return new p32(str3, qx3Var);
            case 20:
                obj.getClass();
                List list11 = (List) obj;
                Object obj19 = list11.get(0);
                float f5 = f32.b;
                hd3 hd3Var3 = id3.B;
                Boolean bool4 = Boolean.FALSE;
                nt1.g(obj19, bool4);
                f32 f32Var = obj19 != null ? (f32) hd3Var3.o.k(obj19) : null;
                f32Var.getClass();
                float f6 = f32Var.a;
                Object obj20 = list11.get(1);
                hd3 hd3Var4 = id3.C;
                nt1.g(obj20, bool4);
                h32 h32Var = obj20 != null ? (h32) hd3Var4.o.k(obj20) : null;
                h32Var.getClass();
                int i3 = h32Var.a;
                Object obj21 = list11.get(2);
                hd3 hd3Var5 = id3.D;
                nt1.g(obj21, bool4);
                g32 g32Var = obj21 != null ? (g32) hd3Var5.o.k(obj21) : null;
                g32Var.getClass();
                return new i32(f6, i3, g32Var.a);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                obj.getClass();
                float fFloatValue3 = ((Float) obj).floatValue();
                f32.a(fFloatValue3);
                return new f32(fFloatValue3);
            case 22:
                obj.getClass();
                return new h32(((Integer) obj).intValue());
            case ConnectionResult.API_DISABLED /* 23 */:
                obj.getClass();
                List list12 = (List) obj;
                Object obj22 = list12.get(0);
                hf hfVar = obj22 != null ? (hf) obj22 : null;
                hfVar.getClass();
                Object obj23 = list12.get(2);
                Integer num3 = obj23 != null ? (Integer) obj23 : null;
                num3.getClass();
                int iIntValue2 = num3.intValue();
                Object obj24 = list12.get(3);
                Integer num4 = obj24 != null ? (Integer) obj24 : null;
                num4.getClass();
                int iIntValue3 = num4.intValue();
                Object obj25 = list12.get(4);
                String str4 = obj25 != null ? (String) obj25 : null;
                str4.getClass();
                switch (hfVar.ordinal()) {
                    case 0:
                        Object obj26 = list12.get(1);
                        xh1 xh1Var3 = id3.g;
                        if (!nt1.g(obj26, Boolean.FALSE) && obj26 != null) {
                            qs2Var = (qs2) ((pe1) xh1Var3.o).k(obj26);
                        }
                        qs2Var.getClass();
                        efVar = new ef(qs2Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 1:
                        Object obj27 = list12.get(1);
                        xh1 xh1Var4 = id3.h;
                        if (!nt1.g(obj27, Boolean.FALSE) && obj27 != null) {
                            iq3Var = (iq3) ((pe1) xh1Var4.o).k(obj27);
                        }
                        iq3Var.getClass();
                        efVar = new ef(iq3Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 2:
                        Object obj28 = list12.get(1);
                        xh1 xh1Var5 = id3.c;
                        if (!nt1.g(obj28, Boolean.FALSE) && obj28 != null) {
                            wa4Var = (wa4) ((pe1) xh1Var5.o).k(obj28);
                        }
                        wa4Var.getClass();
                        efVar = new ef(wa4Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 3:
                        Object obj29 = list12.get(1);
                        xh1 xh1Var6 = id3.d;
                        if (!nt1.g(obj29, Boolean.FALSE) && obj29 != null) {
                            b84Var = (b84) ((pe1) xh1Var6.o).k(obj29);
                        }
                        b84Var.getClass();
                        efVar = new ef(b84Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 4:
                        Object obj30 = list12.get(1);
                        xh1 xh1Var7 = id3.e;
                        if (!nt1.g(obj30, Boolean.FALSE) && obj30 != null) {
                            q32Var = (q32) ((pe1) xh1Var7.o).k(obj30);
                        }
                        q32Var.getClass();
                        efVar = new ef(q32Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 5:
                        Object obj31 = list12.get(1);
                        xh1 xh1Var8 = id3.f;
                        if (!nt1.g(obj31, Boolean.FALSE) && obj31 != null) {
                            p32Var = (p32) ((pe1) xh1Var8.o).k(obj31);
                        }
                        p32Var.getClass();
                        efVar = new ef(p32Var, iIntValue2, iIntValue3, str4);
                        break;
                    case 6:
                        Object obj32 = list12.get(1);
                        String str5 = obj32 != null ? (String) obj32 : null;
                        str5.getClass();
                        efVar = new ef(new ws3(str5), iIntValue2, iIntValue3, str4);
                        break;
                    default:
                        p61.x();
                        return null;
                }
                return efVar;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                obj.getClass();
                return new g32(((Integer) obj).intValue());
            case 25:
                String str6 = obj != null ? (String) obj : null;
                str6.getClass();
                return new wa4(str6);
            case 26:
                String str7 = obj != null ? (String) obj : null;
                str7.getClass();
                return new b84(str7);
            case 27:
                obj.getClass();
                List list13 = (List) obj;
                Object obj33 = list13.get(0);
                hd3 hd3Var6 = id3.q;
                Boolean bool5 = Boolean.FALSE;
                nt1.g(obj33, bool5);
                vw3 vw3Var = obj33 != null ? (vw3) hd3Var6.o.k(obj33) : null;
                vw3Var.getClass();
                int i4 = vw3Var.a;
                Object obj34 = list13.get(1);
                hd3 hd3Var7 = id3.r;
                nt1.g(obj34, bool5);
                ax3 ax3Var = obj34 != null ? (ax3) hd3Var7.o.k(obj34) : null;
                ax3Var.getClass();
                int i5 = ax3Var.a;
                Object obj35 = list13.get(2);
                dy3[] dy3VarArr2 = cy3.b;
                hd3 hd3Var8 = id3.v;
                nt1.g(obj35, bool5);
                cy3 cy3Var3 = obj35 != null ? (cy3) hd3Var8.o.k(obj35) : null;
                cy3Var3.getClass();
                long j4 = cy3Var3.a;
                Object obj36 = list13.get(3);
                gx3 gx3Var = gx3.c;
                gx3 gx3Var2 = (nt1.g(obj36, bool5) || obj36 == null) ? null : (gx3) ((pe1) id3.l.o).k(obj36);
                Object obj37 = list13.get(4);
                mv2 mv2Var = (nt1.g(obj37, bool5) || obj37 == null) ? null : (mv2) ((pe1) kd3.a.o).k(obj37);
                Object obj38 = list13.get(5);
                i32 i32Var = i32.d;
                i32 i32Var2 = (nt1.g(obj38, bool5) || obj38 == null) ? null : (i32) ((pe1) id3.A.o).k(obj38);
                Object obj39 = list13.get(6);
                d32 d32Var = (nt1.g(obj39, bool5) || obj39 == null) ? null : (d32) ((pe1) kd3.c.o).k(obj39);
                d32Var.getClass();
                int i6 = d32Var.a;
                Object obj40 = list13.get(7);
                hd3 hd3Var9 = id3.s;
                nt1.g(obj40, bool5);
                gn1 gn1Var = obj40 != null ? (gn1) hd3Var9.o.k(obj40) : null;
                gn1Var.getClass();
                int i7 = gn1Var.a;
                Object obj41 = list13.get(8);
                boolean zG = nt1.g(obj41, bool5);
                xh1 xh1Var9 = kd3.d;
                if (!zG && obj41 != null) {
                    sx3Var = (sx3) ((pe1) xh1Var9.o).k(obj41);
                }
                return new qs2(i4, i5, j4, gx3Var2, mv2Var, i32Var2, i6, i7, sx3Var);
            case 28:
                obj.getClass();
                List list14 = (List) obj;
                Object obj42 = list14.get(0);
                int i8 = t70.g;
                Boolean bool6 = Boolean.FALSE;
                nt1.g(obj42, bool6);
                t70 t70Var2 = obj42 != null ? obj42.equals(bool6) ? new t70(t70.f) : new t70(c75.b(((Integer) obj42).intValue())) : null;
                t70Var2.getClass();
                long j5 = t70Var2.a;
                Object obj43 = list14.get(1);
                dy3[] dy3VarArr3 = cy3.b;
                pe1 pe1Var2 = id3.v.o;
                nt1.g(obj43, bool6);
                cy3 cy3Var4 = obj43 != null ? (cy3) pe1Var2.k(obj43) : null;
                cy3Var4.getClass();
                long j6 = cy3Var4.a;
                Object obj44 = list14.get(2);
                pb1 pb1Var = pb1.o;
                pb1 pb1Var2 = (nt1.g(obj44, bool6) || obj44 == null) ? null : (pb1) ((pe1) id3.m.o).k(obj44);
                Object obj45 = list14.get(3);
                nb1 nb1Var = (nt1.g(obj45, bool6) || obj45 == null) ? null : (nb1) ((pe1) id3.t.o).k(obj45);
                Object obj46 = list14.get(4);
                ob1 ob1Var = (nt1.g(obj46, bool6) || obj46 == null) ? null : (ob1) ((pe1) id3.f136u.o).k(obj46);
                Object obj47 = list14.get(6);
                String str8 = obj47 != null ? (String) obj47 : null;
                Object obj48 = list14.get(7);
                nt1.g(obj48, bool6);
                cy3 cy3Var5 = obj48 != null ? (cy3) pe1Var2.k(obj48) : null;
                cy3Var5.getClass();
                long j7 = cy3Var5.a;
                Object obj49 = list14.get(8);
                eu euVar = (nt1.g(obj49, bool6) || obj49 == null) ? null : (eu) ((pe1) id3.n.o).k(obj49);
                Object obj50 = list14.get(9);
                fx3 fx3Var = (nt1.g(obj50, bool6) || obj50 == null) ? null : (fx3) ((pe1) id3.k.o).k(obj50);
                Object obj51 = list14.get(10);
                e72 e72Var = e72.p;
                e72 e72Var2 = (nt1.g(obj51, bool6) || obj51 == null) ? null : (e72) ((pe1) id3.y.o).k(obj51);
                Object obj52 = list14.get(11);
                nt1.g(obj52, bool6);
                t70 t70Var3 = obj52 != null ? obj52.equals(bool6) ? new t70(t70.f) : new t70(c75.b(((Integer) obj52).intValue())) : null;
                t70Var3.getClass();
                long j8 = t70Var3.a;
                Object obj53 = list14.get(12);
                yw3 yw3Var = (nt1.g(obj53, bool6) || obj53 == null) ? null : (yw3) ((pe1) id3.j.o).k(obj53);
                Object obj54 = list14.get(13);
                hl3 hl3Var2 = hl3.d;
                xh1 xh1Var10 = id3.o;
                if (!nt1.g(obj54, bool6) && obj54 != null) {
                    hl3Var = (hl3) ((pe1) xh1Var10.o).k(obj54);
                }
                return new iq3(j5, j6, pb1Var2, nb1Var, ob1Var, (ra1) null, str8, j7, euVar, fx3Var, e72Var2, j8, yw3Var, hl3Var, 49184);
            default:
                obj.getClass();
                List list15 = (List) obj;
                Object obj55 = list15.get(0);
                Boolean bool7 = obj55 != null ? (Boolean) obj55 : null;
                bool7.getClass();
                boolean zBooleanValue = bool7.booleanValue();
                Object obj56 = list15.get(1);
                boolean zG2 = nt1.g(obj56, Boolean.FALSE);
                xh1 xh1Var11 = kd3.b;
                if (!zG2 && obj56 != null) {
                    uz0Var = (uz0) ((pe1) xh1Var11.o).k(obj56);
                }
                uz0Var.getClass();
                return new mv2(uz0Var.a, zBooleanValue);
        }
    }
}
