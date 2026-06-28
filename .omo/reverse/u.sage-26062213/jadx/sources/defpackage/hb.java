package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hb {
    public final /* synthetic */ int a;
    public int b;
    public Object c;
    public Object d;

    /* JADX WARN: Removed duplicated region for block: B:30:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ef A[LOOP:1: B:27:0x00cd->B:33:0x00ef, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public hb(defpackage.ms1 r13, defpackage.y02 r14) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hb.<init>(ms1, y02):void");
    }

    public void a() {
        me0 me0Var;
        ImageView imageView = (ImageView) this.c;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            sx0.a(drawable);
        }
        if (drawable == null || (me0Var = (me0) this.d) == null) {
            return;
        }
        ig.c(drawable, me0Var, imageView.getDrawableState());
    }

    public e53 b(boolean z) {
        mp1 mp1Var;
        mp1 mp1Var2;
        if (z && (mp1Var2 = (mp1) this.d) != null) {
            throw mp1Var2.a();
        }
        e53 e53VarA = e53.a(this.b, (Object[]) this.c, this);
        if (!z || (mp1Var = (mp1) this.d) == null) {
            return e53VarA;
        }
        throw mp1Var.a();
    }

    public it1 c(int i) {
        if (i < 0 || i >= this.b) {
            dr1.d("Index " + i + ", size " + this.b);
        }
        it1 it1Var = (it1) this.d;
        if (it1Var != null) {
            int i2 = it1Var.a;
            if (i < it1Var.b + i2 && i2 <= i) {
                return it1Var;
            }
        }
        ug2 ug2Var = (ug2) this.c;
        it1 it1Var2 = (it1) ug2Var.n[qj0.q(i, ug2Var)];
        this.d = it1Var2;
        return it1Var2;
    }

    public int d(Object obj) {
        cg2 cg2Var = (cg2) this.c;
        int iD = cg2Var.d(obj);
        if (iD >= 0) {
            return cg2Var.c[iD];
        }
        return -1;
    }

    public String e() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.b + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((Object[]) this.c)[i2];
            if (obj instanceof gi3) {
                gi3 gi3Var = (gi3) obj;
                boolean zG = nt1.g(gi3Var.c(), it3.Q);
                int[] iArr = (int[]) this.d;
                if (!zG) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(gi3Var.e(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(((int[]) this.d)[i2]);
                    sb.append("]");
                }
            } else if (obj != w13.G) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int f(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2, boolean z3) {
        int i8 = i & 33554431;
        long[] jArr = (long[]) this.c;
        int i9 = this.b;
        int i10 = i9 + 3;
        this.b = i10;
        int length = jArr.length;
        if (length <= i10) {
            int iMax = Math.max(length * 2, i10);
            this.c = Arrays.copyOf(jArr, iMax);
            this.d = Arrays.copyOf((long[]) this.d, iMax);
        }
        long[] jArr2 = (long[]) this.c;
        jArr2[i9] = (((long) i2) << 32) | (((long) i3) & 4294967295L);
        jArr2[i9 + 1] = (((long) i4) << 32) | (((long) i5) & 4294967295L);
        int i11 = i6 & 33554431;
        jArr2[i9 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (((long) Math.min(0, 1023)) << 50) | (((long) i11) << 25) | ((long) (i & 33554431));
        if (i6 == -1) {
            return i9;
        }
        if ((i7 != -4) == false) {
            ar1.b("Inserted child " + i8 + " without valid parent index");
        }
        int i12 = i7 + 2;
        long j = jArr2[i12];
        if (!((33554431 & ((int) j)) == i11)) {
            ar1.b("Inserted child " + i8 + " without valid parent index or parent " + i11 + " not found");
        }
        int i13 = m33.b;
        jArr2[i12] = ((-1151795604700004353L) & j) | (((long) Math.min((i9 - i7) / 3, 1023)) << 50);
        return i9;
    }

    public void g(int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.c;
        Context context = imageView.getContext();
        int[] iArr = i13.e;
        ui3 ui3VarH = ui3.h(context, null, iArr, i);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        lb4.d(imageView, imageView.getContext(), iArr, null, (TypedArray) ui3VarH.p, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = zf5.H(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                sx0.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(ui3VarH.d(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(sx0.b(typedArray.getInt(3, -1), null));
            }
            ui3VarH.j();
        } catch (Throwable th) {
            ui3VarH.j();
            throw th;
        }
    }

    public void h(Object obj, Object obj2) {
        int i = (this.b + 1) * 2;
        Object[] objArr = (Object[]) this.c;
        if (i > objArr.length) {
            this.c = Arrays.copyOf(objArr, cp1.b(objArr.length, i));
        }
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 == null) {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
        Object[] objArr2 = (Object[]) this.c;
        int i2 = this.b;
        int i3 = i2 * 2;
        objArr2[i3] = obj;
        objArr2[i3 + 1] = obj2;
        this.b = i2 + 1;
    }

    public void i(e53 e53Var) {
        Set setEntrySet = e53Var.entrySet();
        int size = (setEntrySet.size() + this.b) * 2;
        Object[] objArr = (Object[]) this.c;
        if (size > objArr.length) {
            this.c = Arrays.copyOf(objArr, cp1.b(objArr.length, size));
        }
        y64 it = ((b53) setEntrySet).iterator();
        while (true) {
            hp1 hp1Var = (hp1) it;
            if (!hp1Var.hasNext()) {
                return;
            }
            Map.Entry entry = (Map.Entry) hp1Var.next();
            h(entry.getKey(), entry.getValue());
        }
    }

    public void j(long j, int i, int i2, int i3) {
        long j2;
        char c;
        int i4;
        char c2 = '2';
        if ((((int) (j >> 50)) & 1023) > 0) {
            int i5 = m33.b;
            long j3 = -1125899873288193L;
            int i6 = 33554431;
            char c3 = 25;
            long[] jArr = (long[]) this.c;
            long[] jArr2 = (long[]) this.d;
            int i7 = this.b;
            jArr2[0] = (j & (-1125899873288193L)) | (((long) (i & 33554431)) << 25);
            int i8 = 1;
            while (i8 > 0) {
                i8--;
                long j4 = jArr2[i8];
                int i9 = ((int) j4) & i6;
                int i10 = ((int) (j4 >> c3)) & i6;
                int i11 = ((int) (j4 >> c2)) & 1023;
                int i12 = i11 == 1023 ? i7 : (i11 * 3) + i10;
                if (i10 < 0) {
                    return;
                }
                while (i10 < i7 - 2 && i10 <= i12) {
                    int i13 = i10 + 2;
                    long j5 = jArr[i13];
                    char c4 = c2;
                    int i14 = i6;
                    if ((((int) (j5 >> c3)) & i14) == i9) {
                        long j6 = jArr[i10];
                        int i15 = i10 + 1;
                        j2 = j3;
                        long j7 = jArr[i15];
                        c = c3;
                        i4 = i12;
                        jArr[i10] = (((long) (((int) j6) + i3)) & 4294967295L) | (((long) (((int) (j6 >> 32)) + i2)) << 32);
                        jArr[i15] = (((long) (((int) j7) + i3)) & 4294967295L) | (((long) (((int) (j7 >> 32)) + i2)) << 32);
                        jArr[i13] = (((j5 >> 63) & 1) << 60) | j5;
                        if ((((int) (j5 >> c4)) & 1023) > 0) {
                            int i16 = m33.b;
                            jArr2[i8] = (j5 & j2) | (((long) ((i10 + 3) & i14)) << c);
                            i8++;
                        }
                    } else {
                        j2 = j3;
                        c = c3;
                        i4 = i12;
                    }
                    i10 += 3;
                    i12 = i4;
                    i6 = i14;
                    c3 = c;
                    c2 = c4;
                    j3 = j2;
                }
                i6 = i6;
                c3 = c3;
                c2 = c2;
                j3 = j3;
            }
        }
    }

    public String toString() {
        switch (this.a) {
            case 3:
                return e();
            case 8:
                StringBuilder sb = new StringBuilder();
                if (((d03) this.c) == d03.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(this.b);
                sb.append(' ');
                sb.append((String) this.d);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public hb(d03 d03Var, int i, String str) {
        this.a = 8;
        this.c = d03Var;
        this.b = i;
        this.d = str;
    }

    public hb(ArrayList arrayList, int i, MotionEvent motionEvent) {
        this.a = 0;
        this.c = arrayList;
        this.b = i;
        this.d = motionEvent;
        if (arrayList.isEmpty()) {
            k21.f("changes cannot be empty");
            throw null;
        }
    }

    public hb(ImageView imageView) {
        this.a = 1;
        this.b = 0;
        this.c = imageView;
    }

    public /* synthetic */ hb(int i, byte b) {
        this.a = i;
    }

    public hb() {
        this.a = 4;
        this.c = new ug2(new it1[16]);
    }

    public hb(int i) {
        this.a = 2;
        this.c = new Object[i * 2];
        this.b = 0;
    }
}
