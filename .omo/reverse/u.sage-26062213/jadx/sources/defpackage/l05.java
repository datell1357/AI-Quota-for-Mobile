package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.lang.reflect.Field;
import java.util.Arrays;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l05 implements h15 {
    public static final int[] k = new int[0];
    public static final Unsafe l = i35.e();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final xx4 e;
    public final int[] f;
    public final int g;
    public final int h;
    public final sz4 i;
    public final r25 j;

    public l05(int[] iArr, Object[] objArr, int i, int i2, xx4 xx4Var, int[] iArr2, int i3, int i4, sz4 sz4Var, r25 r25Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = sz4Var;
        this.j = r25Var;
        this.e = xx4Var;
    }

    public static boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof sy4) {
            return ((sy4) obj).g();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0374  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.l05 n(defpackage.e15 r34, defpackage.sz4 r35, defpackage.r25 r36) {
        /*
            Method dump skipped, instruction units count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.n(e15, sz4, r25):l05");
    }

    public static int o(sy4 sy4Var, long j) {
        return ((Integer) i35.d(j, sy4Var)).intValue();
    }

    public static int q(int i) {
        return (i >>> 20) & 255;
    }

    public static Field w(String str, Class cls) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sbB = di0.B("Field ", str, " for ", name, " not found. Known fields are ");
            sbB.append(string);
            throw new RuntimeException(sbB.toString());
        }
    }

    @Override // defpackage.h15
    public final boolean a(sy4 sy4Var, sy4 sy4Var2) {
        boolean zB;
        int[] iArr = this.a;
        int length = iArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                int iR = r(i);
                long j = iR & 1048575;
                switch (q(iR)) {
                    case 0:
                        if (i(sy4Var, sy4Var2, i)) {
                            pp4 pp4Var = i35.c;
                            if (Double.doubleToLongBits(pp4Var.a(j, sy4Var)) == Double.doubleToLongBits(pp4Var.a(j, sy4Var2))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 1:
                        if (i(sy4Var, sy4Var2, i)) {
                            pp4 pp4Var2 = i35.c;
                            if (Float.floatToIntBits(pp4Var2.c(j, sy4Var)) == Float.floatToIntBits(pp4Var2.c(j, sy4Var2))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 2:
                        if (i(sy4Var, sy4Var2, i) && i35.b(j, sy4Var) == i35.b(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 3:
                        if (i(sy4Var, sy4Var2, i) && i35.b(j, sy4Var) == i35.b(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 4:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 5:
                        if (i(sy4Var, sy4Var2, i) && i35.b(j, sy4Var) == i35.b(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 6:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 7:
                        if (i(sy4Var, sy4Var2, i)) {
                            pp4 pp4Var3 = i35.c;
                            if (pp4Var3.j(j, sy4Var) == pp4Var3.j(j, sy4Var2)) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 8:
                        if (i(sy4Var, sy4Var2, i) && l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        if (i(sy4Var, sy4Var2, i) && l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 10:
                        if (i(sy4Var, sy4Var2, i) && l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 12:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 13:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 14:
                        if (i(sy4Var, sy4Var2, i) && i35.b(j, sy4Var) == i35.b(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 15:
                        if (i(sy4Var, sy4Var2, i) && i35.a(j, sy4Var) == i35.a(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 16:
                        if (i(sy4Var, sy4Var2, i) && i35.b(j, sy4Var) == i35.b(j, sy4Var2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 17:
                        if (i(sy4Var, sy4Var2, i) && l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case ConnectionResult.SERVICE_UPDATING /* 18 */:
                    case 19:
                    case 20:
                    case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                    case 22:
                    case ConnectionResult.API_DISABLED /* 23 */:
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        zB = l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2));
                        break;
                    case 50:
                        zB = l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        long j2 = iArr[i + 2] & 1048575;
                        if (i35.a(j2, sy4Var) == i35.a(j2, sy4Var2) && l15.b(i35.d(j, sy4Var), i35.d(j, sy4Var2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        i += 3;
                        break;
                }
                if (zB) {
                    i += 3;
                }
            } else {
                this.j.getClass();
                if (sy4Var.zzc.equals(sy4Var2.zzc)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    @Override // defpackage.h15
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.b(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e8 A[PHI: r3
  0x00e8: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:84:0x0207, B:42:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.h15
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(defpackage.sy4 r13) {
        /*
            Method dump skipped, instruction units count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.c(sy4):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    @Override // defpackage.h15
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.d(java.lang.Object):boolean");
    }

    @Override // defpackage.h15
    public final void e(Object obj, byte[] bArr, int i, int i2, h30 h30Var) throws fz4 {
        m(obj, bArr, i, i2, 0, h30Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    @Override // defpackage.h15
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(java.lang.Object r13, java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.f(java.lang.Object, java.lang.Object):void");
    }

    public final void g(int i, Object obj, Object obj2) {
        l.putObject(obj, r(i) & 1048575, obj2);
        z(i, obj);
    }

    public final void h(int i, int i2, Object obj, Object obj2) {
        l.putObject(obj, r(i2) & 1048575, obj2);
        i35.h(obj, this.a[i2 + 2] & 1048575, i);
    }

    public final boolean i(sy4 sy4Var, sy4 sy4Var2, int i) {
        return j(i, sy4Var) == j(i, sy4Var2);
    }

    public final boolean j(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            return ((1 << (i2 >>> 20)) & i35.a(j, obj)) != 0;
        }
        int iR = r(i);
        long j2 = iR & 1048575;
        switch (q(iR)) {
            case 0:
                if (Double.doubleToRawLongBits(i35.c.a(j2, obj)) != 0) {
                }
                break;
            case 1:
                if (Float.floatToRawIntBits(i35.c.c(j2, obj)) != 0) {
                }
                break;
            case 2:
                if (i35.b(j2, obj) != 0) {
                }
                break;
            case 3:
                if (i35.b(j2, obj) != 0) {
                }
                break;
            case 4:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 5:
                if (i35.b(j2, obj) != 0) {
                }
                break;
            case 6:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 7:
                break;
            case 8:
                Object objD = i35.d(j2, obj);
                if (!(objD instanceof String)) {
                    if (!(objD instanceof iy4)) {
                        q73.d();
                        break;
                    } else if (!iy4.p.equals(objD)) {
                    }
                } else if (!((String) objD).isEmpty()) {
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                if (i35.d(j2, obj) != null) {
                }
                break;
            case 10:
                if (!iy4.p.equals(i35.d(j2, obj))) {
                }
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 12:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 13:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 14:
                if (i35.b(j2, obj) != 0) {
                }
                break;
            case 15:
                if (i35.a(j2, obj) != 0) {
                }
                break;
            case 16:
                if (i35.b(j2, obj) != 0) {
                }
                break;
            case 17:
                if (i35.d(j2, obj) != null) {
                }
                break;
            default:
                q73.d();
                break;
        }
        return false;
    }

    public final boolean l(int i, int i2, Object obj) {
        return i35.a((long) (this.a[i2 + 2] & 1048575), obj) == i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0299, code lost:
    
        throw defpackage.fz4.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02ec, code lost:
    
        throw defpackage.fz4.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x034d, code lost:
    
        throw defpackage.fz4.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ea, code lost:
    
        r8 = r11;
        r6 = r12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0b29 A[PHI: r4 r10 r14 r22
  0x0b29: PHI (r4v150 byte[]) = 
  (r4v133 byte[])
  (r4v134 byte[])
  (r4v135 byte[])
  (r4v136 byte[])
  (r4v137 byte[])
  (r4v138 byte[])
  (r4v140 byte[])
  (r4v143 byte[])
  (r4v151 byte[])
 binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
  0x0b29: PHI (r10v25 int) = 
  (r10v6 int)
  (r10v7 int)
  (r10v8 int)
  (r10v9 int)
  (r10v10 int)
  (r10v11 int)
  (r10v13 int)
  (r10v18 int)
  (r10v26 int)
 binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
  0x0b29: PHI (r14v75 int) = 
  (r14v52 int)
  (r14v53 int)
  (r14v54 int)
  (r14v55 int)
  (r14v56 int)
  (r14v57 int)
  (r14v59 int)
  (r14v65 int)
  (r14v76 int)
 binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]
  0x0b29: PHI (r22v26 int) = 
  (r22v9 int)
  (r22v10 int)
  (r22v11 int)
  (r22v12 int)
  (r22v13 int)
  (r22v14 int)
  (r22v16 int)
  (r22v21 int)
  (r22v27 int)
 binds: [B:472:0x0b12, B:469:0x0af4, B:466:0x0ad8, B:463:0x0abf, B:460:0x0aa5, B:457:0x0a8a, B:449:0x0a62, B:421:0x09b2, B:410:0x0959] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0b63  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x08d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0b2c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:584:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:614:0x08e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:619:0x0b41 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x024b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m(java.lang.Object r33, byte[] r34, int r35, int r36, int r37, defpackage.h30 r38) throws defpackage.fz4 {
        /*
            Method dump skipped, instruction units count: 3184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l05.m(java.lang.Object, byte[], int, int, int, h30):int");
    }

    public final int p(int i, int i2) {
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int r(int i) {
        return this.a[i + 1];
    }

    public final void s(int i) {
        int i2 = i / 3;
        if (this.b[i2 + i2 + 1] == null) {
            return;
        }
        mk0.b();
    }

    public final h15 t(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        h15 h15Var = (h15) objArr[i3];
        if (h15Var != null) {
            return h15Var;
        }
        h15 h15VarA = z05.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = h15VarA;
        return h15VarA;
    }

    public final Object u(int i, Object obj) {
        h15 h15VarT = t(i);
        int iR = r(i) & 1048575;
        if (!j(i, obj)) {
            return h15VarT.zzd();
        }
        Object object = l.getObject(obj, iR);
        if (k(object)) {
            return object;
        }
        sy4 sy4VarZzd = h15VarT.zzd();
        if (object != null) {
            h15VarT.f(sy4VarZzd, object);
        }
        return sy4VarZzd;
    }

    public final Object v(int i, int i2, Object obj) {
        h15 h15VarT = t(i2);
        if (!l(i, i2, obj)) {
            return h15VarT.zzd();
        }
        Object object = l.getObject(obj, r(i2) & 1048575);
        if (k(object)) {
            return object;
        }
        sy4 sy4VarZzd = h15VarT.zzd();
        if (object != null) {
            h15VarT.f(sy4VarZzd, object);
        }
        return sy4VarZzd;
    }

    public final void x(int i, Object obj, Object obj2) {
        if (j(i, obj2)) {
            int iR = r(i) & 1048575;
            Unsafe unsafe = l;
            long j = iR;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + obj2.toString());
            }
            h15 h15VarT = t(i);
            if (!j(i, obj)) {
                if (k(object)) {
                    sy4 sy4VarZzd = h15VarT.zzd();
                    h15VarT.f(sy4VarZzd, object);
                    unsafe.putObject(obj, j, sy4VarZzd);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                z(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                sy4 sy4VarZzd2 = h15VarT.zzd();
                h15VarT.f(sy4VarZzd2, object2);
                unsafe.putObject(obj, j, sy4VarZzd2);
                object2 = sy4VarZzd2;
            }
            h15VarT.f(object2, object);
        }
    }

    public final void y(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (l(i2, i, obj2)) {
            int iR = r(i) & 1048575;
            Unsafe unsafe = l;
            long j = iR;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            h15 h15VarT = t(i);
            if (!l(i2, i, obj)) {
                if (k(object)) {
                    sy4 sy4VarZzd = h15VarT.zzd();
                    h15VarT.f(sy4VarZzd, object);
                    unsafe.putObject(obj, j, sy4VarZzd);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                i35.h(obj, iArr[i + 2] & 1048575, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                sy4 sy4VarZzd2 = h15VarT.zzd();
                h15VarT.f(sy4VarZzd2, object2);
                unsafe.putObject(obj, j, sy4VarZzd2);
                object2 = sy4VarZzd2;
            }
            h15VarT.f(object2, object);
        }
    }

    public final void z(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        i35.h(obj, j, (1 << (i2 >>> 20)) | i35.a(j, obj));
    }

    @Override // defpackage.h15
    public final sy4 zzd() {
        return ((sy4) this.e).b();
    }
}
